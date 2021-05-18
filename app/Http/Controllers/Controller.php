<?php

namespace App\Http\Controllers;

use App\Helpers\CollectionHelper;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use App\Models\{Banner,RightSideBanner,Trustee,Contact,NewsletterSubscription,PrimaryCategory,PrimaryPage,Category,Post,NgoManagement,User,Donation,Page,FeaturedStory,Blog,WebFirebaseToken,CampaignManagement, CareerManagement,Publication,PressRelease,InTheNews,StoriesOfHope,AnnualReport, FooterPageSectionCard, Newsletter, OurTeam};
use View;
use Illuminate\Support\Facades\Hash;

use Illuminate\Support\Facades\Auth;

use function PHPUnit\Framework\isEmpty;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

	public function __construct() {
        $PrimaryCategory = $this->getPrimaryCategory();
        $footerNavigation = $this->getCategory();
		// dd($footerNavigation);
		 View::share('PrimaryCategory', $PrimaryCategory);
		 View::share('footerNavigation', $footerNavigation);
		 $campaigns_nav = CampaignManagement::status()->orderBy("id", 'desc')->paginate(20);
		 View::share('campaigns_nav', $campaigns_nav);
	}

	public function index(Request $request) {
		$banners = Banner::status()->orderBy('order', 'asc')->get();
		$right_banners = RightSideBanner::status()->orderBy('order', 'asc')->get();
		$featureds = PrimaryPage::with("category")->published()->where("featured", 1)->orderBy("showing_order", 'asc')->limit(4)->get();
		$blogs = Blog::active()->orderBy("id", 'desc')->limit(2)->get();
		// dd($blogs);
		return view('pages.welcome', compact('banners','right_banners','featureds','blogs'));
	}

	public function trustees(Request $request) {
		$trustees = Trustee::status()->orderBy('order', 'asc')->get()->groupBy(function($item) {
            return $item->type;
        });
		// dd($trustees);
		return view('pages.trustees', compact('trustees'));
	}
	public function team(Request $request) {
		$team = OurTeam::status()->orderBy('order', 'asc')->get()->groupBy(function($item) {
            return $item->type;
        });
		// dd($team);
		// return $team;
		return view('pages.team', compact('team'));
	}

	public function landingPage(Request $request) {
		return view('pages.landing-page');
	}

	public function landingPage2(Request $request) {
		return view('pages.landing-page2');
	}

	public function contactUs(Request $request) {
		return view('pages.contact-us');
	}

   public function contactUSPost(Request $request)
   {
       $this->validate($request, [
			'name' => 'required',
			'email' => 'required|email:rfc,dns',
			'message' => 'required',
			'g-recaptcha-response' => 'required|recaptcha'
        ]);
       Contact::create($request->all());
       return back()->with('success', 'Thanks for contacting us!');
   }
   public function subscribe(Request $request)
   {
	   \Session::flash('subscribe', true);

        $this->validate($request, [
			'email' => 'required|unique:App\Models\NewsletterSubscription|max:255|email:rfc,dns',
        ]);
		if(!$request->input('name')){
			$name = explode("@", $request->input('email') );
			$request->merge([ 'name' => current($name) ] );
		}
       NewsletterSubscription::create($request->all());
       return back()->with('success', 'Thanks for subscribe!');
   }



    public function getPrimaryCategory() {
		//\DB::enableQueryLog();
        $getCat = PrimaryCategory::whereNull('parent_id')->where('status', 'A')
			->with(['primaryPage','parent_items.children' => function ($q) {
                return $q->orderBy('order','ASC')->get();
            }])->orderBy('order', 'ASC')->get();
			//dd(\DB::getQueryLog());

			// dd($getCat);
        return $getCat;
    }

    public function getCategory() {
		//\DB::enableQueryLog();
        $getCat = Category::whereNull('parent_id')->where('status', 'A')
			->with(['post','parent_items.children' => function ($q) {
                $q->orderBy('order', 'ASC')->get();
            // }])->orderBy('order', 'ASC')->get();
            }])->orderBy('id', 'ASC')->get();
			//dd(\DB::getQueryLog());
        return $getCat;
    }

	 public function primaryPages(Request $request,$category_slug, $child_slug, $sub_child_slug="", $page_slug="" ) {

		if($category_slug == "For-Individuals" && $child_slug=="give-now" ){
			return redirect()->route('PrimaryNavBar', ['page_slug' => $child_slug] );
		}

		$category_slugCheck = $category_slug;
		$parent = null;
		$parent_child = null;
		if( empty($child_slug) ){
			$page_slug = $category_slug;
			$category_slug = $category_slug;
		 }elseif( empty($sub_child_slug) ){
			$page_slug = $child_slug;
			$category_slug = $category_slug;
			$parent = $category_slug;
		 }else if( empty($page_slug) ){
			 $page_slug = $sub_child_slug;
			 $category_slug = $child_slug;
			 $parent_child = true;
			 $parent = $child_slug;
		 }

		 if( in_array($category_slugCheck , FOOTER_NAVIGATION_PARENT ) ){ 
			 $dataRow = Post::published()->where("slug", $page_slug)
				->with(['section_children','category' => function ($q) use ($category_slug){
					$q->where('slug',$category_slug);
				}])->firstOrFail();
				// dd($dataRow);
			$category_id = $dataRow->category_id;
			 $relatedPrimaryPage = Post::published()
				->whereIn('category_id', function($query) use ($category_id){
							$parentResult = $query->select('id')
							->from(with(new Category)->getTable())
							->where('parent_id', $category_id);
							})
				->with(['category.category_children_parent'])->get();

			// Blogs Show Listing
			
			$blogs = null;$paginate = true;
			if($category_slug == "media" && $page_slug== "blogs"){
				$blogs = Blog::active()->orderBy("id", 'desc')->paginate(20);
			}
			$careers = null;
			if($category_slugCheck == "who-we-are" && $page_slug== "work-with-us"){
				$careers = CareerManagement::status()->orderBy("id", 'desc')->get();
			}
			$footerSubPages = null;
			if($category_slugCheck == "media" && $page_slug== "publications"){
				$footerSubPages = Publication::published()->orderBy("id", 'desc')->paginate(10);
			}elseif($category_slugCheck == "media" && $page_slug== "press-releases"){
				$footerSubPages = PressRelease::published()->orderBy("id", 'desc')->paginate(10);
			}elseif($category_slugCheck == "media" && $page_slug== "In-The-News"){
				$footerSubPages = InTheNews::published()->orderBy("id", 'desc')->paginate(20);
			}elseif($category_slugCheck == "media" && $page_slug== "Stories-Of-Hope"){
				$footerSubPages = StoriesOfHope::published()->orderBy("id", 'desc')->paginate(20);
			}elseif($category_slugCheck == "who-we-are" && $page_slug== "Annual-Reports-And-Financials"){
				$footerSubPages = AnnualReport::published()->orderBy("id", 'desc')->paginate(20);
			}elseif($category_slugCheck == "who-we-are" && $page_slug== "Annual-Reports-And-Financials"){
				$footerSubPages = Newsletter::published()->orderBy("id", 'desc')->paginate(20);
			} 

			if($category_slugCheck == "media"){
				$i = 0; 
				foreach($dataRow->section_children as $rowData) {
					$dataRow->section_children[$i]['has_pagination'] = true;
					$dataRow->section_children[$i]['card_children_paginated'] = CollectionHelper::paginate($rowData['card_children'], 10);
					$i++;
				}
			}			
			// return $dataRow;

			return view('pages.footer-page', compact('dataRow','relatedPrimaryPage','blogs','paginate','careers','footerSubPages') );
		 }else{
			 $dataRow = PrimaryPage::published()//->where("slug", $page_slug)
				->where('category_id', function($query) use ($page_slug,$parent,$sub_child_slug,$parent_child,$category_slugCheck){
					$result = $query->select('id')
					->from(with(new PrimaryCategory)->getTable())
					->where('slug', $page_slug);
					if($parent) {
						$result->where('parent_id', function($query) use ($parent,$sub_child_slug,$parent_child,$category_slugCheck){
							$query->select('id')
							->from(with(new PrimaryCategory)->getTable());

							if($sub_child_slug == "") {
								$query->whereNull('parent_id');
							} elseif( !empty($sub_child_slug) && $parent_child ){
								$query->where('parent_id', function($query) use ($category_slugCheck){
									$query->select('id')
									->from(with(new PrimaryCategory)->getTable())->where('slug', $category_slugCheck);
								});
							}
							$parentResult = $query->where('slug', $parent);
						});
					}else{
						$result->whereNull('parent_id');
					}
				})
				->with(['section_children','category'])->firstOrFail();
			 $category_id = $dataRow->category_id;
			 $relatedPrimaryPage = PrimaryPage::published()
				->whereIn('category_id', function($query) use ($category_id){
							$parentResult = $query->select('id')
							->from(with(new PrimaryCategory)->getTable())
							->where('parent_id', $category_id);
							})
				->with(['category.category_children_parent'])->get();
				// dd($relatedPrimaryPage);

			// campaigns

			$campaigns = null;
			if($category_slugCheck == "give-now" && empty($child_slug) ) {
				$campaigns = CampaignManagement::status()->orderBy("id", 'desc')->paginate(20);
			}
			$showContactUs = false;
			// if($category_slugCheck == "for-companies" && empty($child_slug) ) {
			// 	$showContactUs = true;
			// }
			// Blogs Show Listing
			$blogs = null;
			$paginate = false;
			// dd($dataRow->primary_page_with_blog());
			if($dataRow->primary_page_with_blog()->isNotEmpty() ){
				$blogs = $dataRow->primary_page_with_blog();
			} 
			
			$storyOfHope = null;
			if($dataRow->story_of_hope) {
				$storyOfHope1 = StoriesOfHope::published()->latest()->first();
				$storyOfHope = Post::published()->where("slug", 'stories-of-hope')
				->with(['section_children','category' => function ($q) use ($category_slug){
					$q->where('slug',$category_slug);
				}])->firstOrFail()->section_children()->first()->card_children()->orderBy('id', 'DESC')->take(1)->get()->first();
			}
			$joinUsBlock = null;
			if($dataRow->join_us_block) {
				$joinUsBlock = FeaturedStory::published()->where('theme_type', '=', 'R')->latest()->first();
			}
			// return $storyOfHope; 
			// return $storyOfHope1;

			// return $dataRow;
 
			return view('pages.primary-page', compact('dataRow','relatedPrimaryPage','campaigns','storyOfHope','joinUsBlock','blogs','paginate', 'showContactUs') );
		 }
	 }

	public function ngoRegister(){
		return view('pages.form-ngo-register');
	}
    public function ngoRegisterStore(Request $request)
    {
       $this->validate($request, [
			'name_of_the_NGO' => 'required',
			//'email' => 'required|email:rfc,dns',
			'date_of_registration' => 'required',
			'12A_certificate_number' => 'required',
			'location_of_registration' => 'required',
			'legal_status' => 'required',
			'PAN' => 'required',
			'state_of_operation' => 'required',
			'district_of_operation' => 'required',
			'registered_address' => 'required',
			'chief_functionary_name' => 'required',
			'chief_functionary_email' => 'required',
        ]);
		$request->merge(['status' => "D"]);
		$saveNgo =  NgoManagement::create($request->except('_token'));


       return back()->with('successNgo', 'Thanks for contacting us!');
   }
	public function donateNow(){
		return view('pages.form-donate-now');
	}
    public function donateNowStore(Request $request)
    {

       $this->validate($request, [
			'name' => 'required',
			'email' => 'required|email:rfc,dns',
			'mobile' => 'required',
			'nationality' => 'required',
			'payment_mode' => 'required',
			'address' => 'required',
			'country' => 'required',
			'state' => 'required',
			'city' => 'required',
			'pan_number' => 'required',
        ]);

		// if($request->input('subscribed')){
		// 	 $this->validate($request, [
		// 		'password' => 'required',
		// 	]);
		// }
		// $userid = 0;
		// if( $request->input('subscribed') ){
		// 	$user = User::create([
		// 		'name' => $request->input('name'),
		// 		'email' => $request->input('email'),
		// 		'password' => Hash::make($request->input('password')),
		// 	]);
		// 	$userid = $user->id;
		// }
		// if (Auth::check()) {
		// 	$userid = Auth::user()->getId();
		// }


		// $request->merge(['status' => "D","user_id"=>$userid ]);
		$saveNgo =  Donation::create($request->except('_token'));


       return back()->with('successNgo', 'Thanks for contacting us!');
   }
	public function page(Request $request, $page_slug="" ) 
	{
		// return $request->all();

		 $dataRow = Page::active()->where("slug", $page_slug)
			->firstOrFail();
		return view('pages.page', compact('dataRow') );

	}

	public function campaignDetails(Request $request,$page_slug ) {
		 $dataRow = CampaignManagement::status()->where("slug", $page_slug)
			->firstOrFail();
		return view('pages.campaign-details', compact('dataRow') );
	}
	public function careerDetails(Request $request,$page_slug ) {
		 $dataRow = CareerManagement::status()->where("slug", $page_slug)
			->firstOrFail();
		return view('pages.career-details', compact('dataRow') );
	}

	public function blogContent(Request $request,$page_slug="", $slug="" ) { 
		$dataRow = FooterPageSectionCard::status()->where("slug", $slug)
			->with('footerPageSection')
		   	->firstOrFail();
		// return $dataRow;
	   	return view('pages.blog-content', compact('dataRow') );
   	}

	public function blogDetails(Request $request,$page_slug="" ) {
			$dataRow = Blog::active()->where("slug", $page_slug)
			->firstOrFail();
		return view('pages.blog-detail', compact('dataRow') );
	}

	public function storyOfDetails(Request $request,$page_slug="" ) {
		 $dataRow = StoriesOfHope::published()->where("slug", $page_slug)
			->firstOrFail();
		return view('pages.story-of-hope-detail', compact('dataRow') );
	}

	public function saveToken(Request $request)
    {
        $flight = WebFirebaseToken::updateOrCreate(
				['token' => $request->token],
				['updated_at' => time()]
			);
        return response()->json(['token saved successfully.']);
    }
	public function searchSystem(Request $request) {

		 $search = $request->input('search');


		 if($search != "") {
			 // \DB::enableQueryLog();

			 $moreSearch = substr($search, 0, 3);

			 $dataRows = PrimaryPage::with("category")->published()
				 ->Where(function ($query) use($search, $moreSearch){
				 $query->where('title', 'LIKE', "%{$search}%")
					 ->orWhere('excerpt', 'LIKE', "%{$search}%")
					 ->orWhere('body', 'LIKE', "%{$search}%")
					 ->orWhere('title', 'LIKE', "%{$moreSearch}%")
					 ->orWhere('excerpt', 'LIKE', "%{$moreSearch}%")
					 ->orWhere('body', 'LIKE', "%{$moreSearch}%");
			 })->get();

			 $dataPostRows = Post::with("category.category_parent")->published()
				 ->Where(function ($query) use($search, $moreSearch){
				 $query->where('title', 'LIKE', "%{$search}%")
					 ->orWhere('excerpt', 'LIKE', "%{$search}%")
					 ->orWhere('body', 'LIKE', "%{$search}%")
					 ->orWhere('title', 'LIKE', "%{$moreSearch}%")
					 ->orWhere('excerpt', 'LIKE', "%{$moreSearch}%")
					 ->orWhere('body', 'LIKE', "%{$moreSearch}%");
			 })->get();

			 return view('pages.search', compact('dataRows','dataPostRows'));
		 } else {
			 return redirect()->back();
		 }

	}

}

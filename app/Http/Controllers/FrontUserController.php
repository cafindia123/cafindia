<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use App\Models\{Banner,RightSideBanner,Trustee,Contact,NewsletterSubscription,PrimaryCategory,PrimaryPage,Category,Post,NgoManagement,User,Donation,Page,FeaturedStory,Blog,WebFirebaseToken,CampaignManagement};
use View;
use Illuminate\Support\Facades\Hash;
class FrontUserController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
	
	public function __construct() {
      
	}
	
	public function donationHistory(Request $request) {
		return view('front-user.donation-history');
	}
	
	public function exploreAllPrograms(Request $request ) {
		$campaigns = CampaignManagement::status()->orderBy("id", 'desc')->paginate(21);
		return view('front-user.explore-all-programs',  compact('campaigns') );
	}
}

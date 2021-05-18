<x-app-layout>
   <x-slot name="header">
   </x-slot>
   <div class="py-3">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
         <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <div class="m-3">
               <div class="">
                  <div class="panel panel-bordered">
                     <div style="padding-top:1rem" class="row">
					 @if($campaigns && $campaigns->isNotEmpty())
						 @foreach($campaigns as $rowKey=>$rowData) 
                        <div class="d-flex program-card-11 col-lg-4 col-xl-4 col-md-4 col-sm-6 col-12 col-xs-12 col-12 col-sm-6 col-md-6 col-lg-4 mb-3">
                           <div class="card" onClick="window.location ='{{route('campaign.details',['slug'=>$rowData->slug])}}';return false;" role="button">
							@if($rowData->image)
								<img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" class="img-fluid-height-w card-img-top">
							@endif
                              <div class="card-body">
                                 <h5 class="card-title">{{$rowData->title}}</h5>
                                 <p class="card-text">{{ mb_strlen( strip_tags($rowData->about_the_campaign) ) > 275 ? mb_substr(strip_tags($rowData->about_the_campaign), 0, 275) . ' ...' : strip_tags($rowData->about_the_campaign) }}</p>
									 {{--<a href="{{route('campaign.details',['slug'=>$rowData->slug])}}" class="btn btn-primary" style="background-color:#d24508;color:#ffffff">READ MORE</a>--}}
                              </div>
                           </div>
                        </div>
						@endforeach
						<div class="d-flex program-card-11 col-lg-12 col-xl-12 col-md-12 col-sm-12 col-12 col-xs-12 col-12 col-sm-12 col-md-12 col-lg-12">{{ $campaigns->links() }}</div>
					@endif
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <style>.card-img, .card-img-top{height:200px;}
</x-app-layout>
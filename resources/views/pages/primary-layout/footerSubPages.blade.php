<div class="" style="">
	 <ul class="">
	 @foreach($footerSubPages as $rowKey=>$rowData) 
	 <li>
		   <div class="  " style="padding-bottom: 20px">
			  <div class="innerContent">
				 <div class="mainIcon" style="float: right">
					<a class="vs_link" href="{{$rowData->link}}" target="_blank"><img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}"></a>
				 </div>
				 <div class="contentSection">
					<div class="innerSection">
					   <h3>
						   <a class="vs_link" href="{{$rowData->link}}" target="_blank">
							   <span style="font-weight:normal; font-size: 25px;line-height: 35px;">
							   {{$rowData->title}}
							   </span>
						   </a>
					   </h3>
						{!! $rowData->description !!}
					</div>
				 </div>
			  </div>
			  <div class="clearfix"></div>
		   </div>
		</li>
		@endforeach
	 </ul>
	 <div id="" class="blogSummaryList">
	 {{ $footerSubPages->links() }}
	 </div>
</div>
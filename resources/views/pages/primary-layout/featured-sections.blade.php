@if($isImage)
	<div class="col-md-4">
@endif
@foreach($storyOfHope as $keyF =>$rowF)
	@if(!$isImage) <div class="col-md-4"> @endif
	@if($rowF->theme_type == "B")
		<div class="story clearfix">
			<div class="stheader">Featured Story</div>
			<div class="story-content">
				@if($rowF->image)
					<div class="topSection">
						<img title="{{$rowF->title}}" alt="{{$rowF->title}}" src="{{ Voyager::image( $rowF->image )}}">
					</div>
				@endif
				<h5 class="px-3 pt-3">{{$rowF->title}}</h5>
				{!! $rowF->description !!}
				@if($rowF->link)
					<a href="{{$rowF->link}}"><i class="fa fa-angle-double-right"></i> Read More</a>
				@endif
			</div>
		</div>
	@elseif($rowF->theme_type == "R")
		<div class="obox @if($isImage)mt-4 @endif">
			<div class="obx-header">{{$rowF->title}}</div>
			<div class="obox-body">
				@if($rowF->image)
				<div class="topSection">
					<img title="{{$rowF->title}}" alt="{{$rowF->title}}" src="{{ Voyager::image( $rowF->image )}}">
				</div>
				@endif
				<p>{!! $rowF->description !!}</p>
				@if($rowF->link)
					<a class="@if($rowF->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$rowF->link}}">@if($rowF->link_type != 'BUTTON')<i class="fa fa-angle-double-right"></i>@endif {{$rowF->link_text}}</a>
				@endif
			</div>
		</div>
	@endif
	@if(!$isImage) </div>  @endif
@endforeach
@if($isImage)
	</div>
@endif
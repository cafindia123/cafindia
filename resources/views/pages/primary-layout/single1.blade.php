@php
	$url = $rowData->video_url;
	preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $url, $matches);
@endphp
@if(isset($matches[1]))
	<div class="{{ $itloo == 1 ? 'servicesection2':'container-fluid servicesection'}}">
	  <div class="container-inner {{ $rowKey > 0 && $itloo == 1 ? 'mt-3':''}}">
		<div class="row d-flex align-items-center">
		@if($alternate%2 == 0)
		  <div class="col-md-4">
			<iframe width="100%" height="272" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
			  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			  allowfullscreen></iframe>
		  </div>
		  <div class="col-md-8">
			<h3 class="heading_c">{{$rowData->title}}</h3>
			<p>{!! $rowData->description !!}</p>
			@if($rowData->link)
			<a class="@if($rowData->link_type == 'BUTTON') btn btn-primary @endif" style="margin: 0px;" href="{{$rowData->link}}"
			  target="_blank">{{$rowData->link_text}}</a>
			 @endif
		  </div>
		  @else
		  <div class="col-md-8">
			<h3 class="heading_c">{{$rowData->title}}</h3>
			<p>{!! $rowData->description !!}</p>
			@if($rowData->link)
			<a class="@if($rowData->link_type == 'BUTTON') btn btn-primary @endif" style="margin: 0px;" href="{{$rowData->link}}"
			  target="_blank">{{$rowData->link_text}}</a>
			 @endif
		  </div>
		  <div class="col-md-4">
			<iframe width="100%" height="272" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
			  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			  allowfullscreen></iframe>
		  </div>
		  @endif
		</div>
	  </div>
	</div>
@else
<div class="{{ $itloo == 1 ? 'servicesection2':'container-fluid servicesection'}}">
  <div class="container-inner {{ $rowKey > 0 && $itloo == 1 ? 'pddt-4':''}}">
	<div class="row">
	@if($alternate%2 == 0)
	  <div class="col-md-6">
		@if($rowData->image)<img class="md_hidden" title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}">@endif
	  </div>
	  <div class="col-md-6">
		<div class="">
		  <h3 class="heading_c">{{$rowData->title}}</h3>
		  <p>{!! $rowData->description !!}</p>
		  @if($rowData->link)
		  <a class="@if($rowData->link_type == 'BUTTON') btn btn-primary donate_btn @endif" style="margin: 0px;" href="{{$rowData->link}}" target="_blank">{{$rowData->link_text}}</a>
		  @endif
		</div>
	  </div>
	  @else
	  <div class="col-md-6">
		<div class="">
		  <h3 class="heading_c">{{$rowData->title}}</h3>
		  <p>{!! $rowData->description !!}</p>
		  @if($rowData->link)
		  <a class="@if($rowData->link_type == 'BUTTON') btn btn-primary donate_btn @endif" style="margin: 0px;" href="{{$rowData->link}}" target="_blank">{{$rowData->link_text}}</a>
		  @endif
		</div>
	  </div>
	  <div class="col-md-6">
		@if($rowData->image)<img class="md_hidden" title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}">@endif
	  </div>
	  @endif
	</div>
  </div>
</div>
@endif

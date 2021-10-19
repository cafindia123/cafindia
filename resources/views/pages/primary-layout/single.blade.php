@php
	$url = $rowData->video_url;
	preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $url, $matches);
@endphp
@if(isset($matches[1]))
    <div class="row d-flex align-items-center">
        @if($alternate%2 == 0)
		    <div class="col-md-4">
                <div class="media-video-container">
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                </div>
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
                    @if(strpos($rowData->link, env('APP_URL')) === false ) target="_blank" @endif>{{$rowData->link_text}}</a>
                @endif
            </div>
            <div class="col-md-4">
                <div class="media-video-container">
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                </div>
            </div>
        @endif
    </div>
@else
	<div class="row">
        
        <div class="col-md-12"  >
            @if($rowData->image)
                <div class="media-container-image @if($alternate%2 == 0) left @else right @endif" style="background-image: url({{ Voyager::image( $rowData->image )}})">
                </div>
            @endif
            <div>
                <h3 class="heading_c">{{$rowData->title}}</h3>
                <p>{!! $rowData->description !!}</p>
                @if($rowData->link)
                    <a class="@if($rowData->link_type == 'BUTTON') btn btn-primary donate_btn @endif" style="margin: 0px;" href="{{$rowData->link}}" @if(strpos($rowData->link, env('APP_URL')) === false ) target="_blank" @endif>{{$rowData->link_text}}</a>
                @endif
            </div>
            <div class="clearfix"></div>
        </div>
	</div>
@endif
<style>
</style>
@php
	$url = $rowData->video_url;
	preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $url, $matches);
@endphp
@if(isset($matches[1]))
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
@else
	<div class="row no-gutters" style="height: 330px;">
        @if($alternate%2 == 0)
            <div class="col-md-6 custom-layout-image-container" style="background-image: url({{ Voyager::image( $rowData->image )}}); ">
                {{-- @if($rowData->image)<img class="md_hidden" title="{{$rowData->title}}" alt="{{$rowData->title}}" src="">@endif --}}
            </div>
            <div class="col-md-6 h-100">
                <div class="givenow-box d-flex justify-content-center">
                    <div class="givenow-inner align-self-center text-center">
                        <h3 class="heading_c">{{$rowData->title}}</h3>
                        <div class="givenow-inner-description">
                            @if ($rowData->appeal)
                                <p>{!! $rowData->appeal !!}</p>
                            @else
                                <p>{!! $rowData->description !!}</p>
                            @endif
                        </div>
                        @if($rowData->link)
                            <a class="@if($rowData->link_type == 'BUTTON') btn donate_btn p-1 @endif" style="margin: 0px; background-color: #d24508;" href="{{$rowData->link}}" target="_blank">{{$rowData->link_text}}</a>
                        @endif
                        @if($rowData->link2)
                            <a class="@if($rowData->link2_type == 'BUTTON') btn donate_btn p-1 @endif" style="margin: 0px; background-color: #d24508;" href="{{$rowData->link2}}" target="_blank">{{$rowData->link2_text}}</a>
                        @else
                            <a class="btn donate_btn p-1" style="margin: 0px; background-color: #d24508;" href="{{ route('campaign.details', [$rowData->slug]) }}" >Give Now</a>
                        @endif
                    </div>
                    <div class="givenow-arrow-left"></div>
                </div>
            </div>
        @else
            <div class="col-md-6 h-100 " >
                <div class="givenow-box d-flex justify-content-center">
                    <div class="givenow-inner align-self-center text-center">
                        <h3 class="heading_c">{{$rowData->title}}</h3>
                        <div class="givenow-inner-description">
                            @if ($rowData->appeal)
                                <p>{!! $rowData->appeal !!}</p>
                            @else
                                <p>{!! $rowData->description !!}</p>
                            @endif
                        </div>
                        
                        @if($rowData->link)
                            <a class="@if($rowData->link_type == 'BUTTON') btn donate_btn p-1 @endif" style="margin: 0px; background-color: #d24508;" href="{{$rowData->link}}" target="_blank">{{$rowData->link_text}}</a>
                        @endif
                        @if($rowData->link2)
                            <a class="@if($rowData->link2_type == 'BUTTON') btn donate_btn p-1 @endif" style="margin: 0px; background-color: #d24508;" href="{{$rowData->link2}}" target="_blank">{{$rowData->link2_text}}</a>
                        @else
                            <a class="btn donate_btn p-1" style="margin: 0px; background-color: #d24508;" href="{{ route('campaign.details', [$rowData->slug]) }}" >Give Now</a>
                        @endif
                    </div>
                    <div class="givenow-arrow-right"></div>
                </div>
            </div>
            <div class="col-md-6 custom-layout-image-container" style="background-image: url({{ Voyager::image( $rowData->image )}}); ">
                {{-- @if($rowData->image)<img class="md_hidden" title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}">@endif --}}
            </div>
        @endif
	</div>
@endif

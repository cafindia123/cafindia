@php
	$url = $rowData->video_url;
	preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $url, $matches);
@endphp
@if(isset($matches[1])) 
    <div class="col-md-12 mb-3 p-2 custom-media-style">
        @if ($rowDataTop->layout_style == 3)
            <div class="custom-media-file-video align-self-center text-center"  >
                <iframe width="100%" height="150" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
            </div>
            <div class="custom-media-text" style="text-align: right;" >
                <h3>
                    @if($rowData->link)
                        <a href="{{ $rowData->link }}" target="_blank" title="{{$rowData->link_text}}">{{ $rowData->title }}</a>
                    @else
                        <a href="{{ '/content-details/'.$mainSlug.'/'.$rowData->slug }}">{{ $rowData->title }}</a>
                    @endif 
                </h3>
                <div class="custom-media-text-description">{!! $rowData->description !!}</div>
            </div>
        @else
            <div class="custom-media-text" style="text-align: left;">
                <h3>
                    @if($rowData->link)
                        <a href="{{ $rowData->link }}" target="_blank" title="{{$rowData->link_text}}">{{ $rowData->title }}</a>
                    @else
                        <a href="{{ '/content-details/'.$mainSlug.'/'.$rowData->slug }}">{{ $rowData->title }}</a>
                    @endif 
                </h3>
                <div class="custom-media-text-description">{!! $rowData->description !!}</div>
            </div>
            <div class="custom-media-file align-self-center text-center">
                <iframe width="100%" height="150" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
            </div>
        @endif
    </div> 
@else 
    <div class="col-md-12 p-0 mb-3 custom-media-style">
        @if($rowData->image)
            <div class="custom-media-file @if ($rowDataTop->layout_style == 3) left-style @else right-style @endif" style="background-image: url({{ Voyager::image( $rowData->image )}});" ></div>
        @endif
        <div class="custom-media-text @if($rowData->image) @else w-100 @endif @if ($rowDataTop->layout_style == 3) right-style @else left-style @endif">
            @if ($rowDataTop->layout_style == 3)
                <div style="width: 100%;" >{{ date_format(date_create($rowData->creates_at), 'd F Y') }}</div> 
            @endif
            <h3 style="font-size: 20px; color: #007f99" class="mt-2" >
                @if($rowData->link)
                    <a style="color: inherit" href="{{ $rowData->link }}" target="_blank" title="{{$rowData->link_text}}">{{ $rowData->title }}</a>
                @else
                    <a style="color: inherit" href="{{ '/content-details/'.$mainSlug.'/'.$rowData->slug }}">{{ $rowData->title }}</a>
                @endif 
            </h3>
            <div class="custom-media-text-description">{!! $rowData->description . '' .$rowData->description !!} </div> 
        </div>
        <div style="clear: both;"></div>
    </div> 
@endif
<style>
</style>
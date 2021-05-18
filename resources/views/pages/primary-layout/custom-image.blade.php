<div class="text-center px-2 flex-shrink-0 flex-grow-0 card-container" style="max-width: 100% !important; "  >
    <div class="cards">
        <div class="topSection" >
            @if ($rowData->image)
            <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" style="width:100%;">@endif
        </div>
        <div class="card-bottom p-2">
            <h4>{{$rowData->title}}</h4>
            <div class="custom-image-description">{!! $rowData->description !!}</div> 
        </div>
    </div>
    @if($rowData->link)
        <a style="bottom: 20px;.media-container-image"  class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$rowData->link}}">{{$rowData->link_text}}</a>
    @endif
</div>

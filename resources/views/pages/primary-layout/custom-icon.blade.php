<div class="text-center px-2 d-flex align-items-stretch" style="width: 220px !important;">
    <div class="custom-card-type-icon align-self-stretch">
        <div class="custom-card-icons">
            <img alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" >
        </div>
        {{-- <div class="custom-card-title">
            <h5>{{$rowData->title}}</h5>
        </div> --}}
        <div class="read">
        {!! $rowData->description !!}
        </div>
        @if($rowData->link)
            <a class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link  @endif" href="{{$rowData->link}}">{{$rowData->link_text}}</a>
        @endif
    </div>
</div>

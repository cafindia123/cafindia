<div class="col-lg-{{12/$rowDataTop->columns_in_rows}} mb-3 col-md-6">
<div class="cards h-100 card-bg">
  <div class="topSection">
  @if($rowData->image)
  <div class="thematic-card-image-section" style="background-image: url({{ Voyager::image( $rowData->image )}});"></div>
	{{-- <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="" style="width:100%; "> --}}
  @endif
  </div>
  <div class="card-bottom">
	<h4 class="text-center">{{$rowData->title}}</h4>
	<p class="text-center">{!! $rowData->description !!}</p>
  </div>
  @if($rowData->link)
	  <a target="_blank" class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link  @endif" href="{{$rowData->link}}">{{$rowData->link_text}}</a>
  @endif
</div>
</div>
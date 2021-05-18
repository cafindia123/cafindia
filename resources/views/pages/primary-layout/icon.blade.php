<div class="col-md-{{ 12/$rowDataTop->columns_in_rows }} text-center px-2 my-2">
  <div class="services p-2 border-0 h-100 p-3 mb-0 bg-white rounded" >
	<div class="service @if($rowData->description == "") mt-5 @endif">
	  <div class="icons"><img alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" ></div>
	  <h3 class="title-text-icon-style">{{$rowData->title}}</h3>
	</div>
	<div class="text-left text-break ">
	 {!! $rowData->description !!}
	</div>
	@if($rowData->link)
		<div class="link-placeholder"></div>
		<a class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link   @endif extra-bottom" href="{{$rowData->link}}">{{$rowData->link_text}}</a>
	@endif
  </div>
</div>
<div class="col-lg-{{12/$rowDataTop->columns_in_rows}} col-md-6">
  <div class="cards cards-border card-bg-white">
	<div class="topSection cards-icon">
	  <div class="topics">
		<h3 class="mt-3 cards-color">{{$rowData->title}}</h3>
	  </div>
	</div>
	<div class="card-bottom text-left">{!! $rowData->description !!}</div>
	<div class="cards-footer">
	@if($rowData->link)
	  <a class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$rowData->link}}">{{$rowData->title}}<span class="arrowSymbol float-right">&nbsp;►&nbsp;</span></a>
	@endif
	</div>
  </div>
</div>
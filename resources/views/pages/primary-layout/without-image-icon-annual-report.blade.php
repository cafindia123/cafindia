<div class="col-lg-{{12/$rowDataTop->columns_in_rows}} col-md-6">
  <div class="cards cards-border card-bg-white">
	<div class="topSection cards-icon">
	  <div class="topics">
		<h3 class="mt-3 cards-color">{{$rowData->title}}</h3>
	  </div>
      <?php
        $url = strip_tags($rowData->description);
      ?>
        @if($rowData->title)
        <a class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$url}}">{{$rowData->title}}</a>
        @endif
	</div>
  </div>
</div>


<style>
    .cards-border{
        min-height: 50px;
    }
    .topics{
        border:none;
    }
</style>
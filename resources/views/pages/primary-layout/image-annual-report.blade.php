<div class="col-lg-{{12/$rowDataTop->columns_in_rows}} mb-3 col-md-6">
    <?php
        $url = strip_tags($rowData->description);
    ?>
    @if($rowData->title)
        <a href="{{$url}}">
            <div class="cards">
                @if($rowData->image)
                    <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" style="height: 380px; ">
                @endif
            </div>
        </a>
    @endif
</div>


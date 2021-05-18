<div class="col-md-{{ 12/$rowDataTop->columns_in_rows }} text-center align-self-stretch mb-4">
    <div class="custom-icon-container h-100 px-2">
        <div class="icons d-flex"><img class="align-self-center mt-5 mb-2" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" ></div>
        <h3 class="custom-icon-title">{{$rowData->title}}</h3>
    </div>
</div>
<style> 
    .custom-icon-container{
        box-shadow: 0 0 1rem rgba(0,0,0,.075)!important;
    }
    .custom-icon-container .icons{
        width: 80px;
        height: 120px;
        margin: 25px auto;
    }
    .custom-icon-container .icons img{
        width: 100%;
    }
    .custom-icon-title{
        font-size: 16px;
        font-family: "Gotham-Book";
        font-weight: bold;
        color: var(--base-color);
        margin: 10px 0; 
    }
</style>
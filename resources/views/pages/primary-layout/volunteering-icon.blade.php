<div class="col-md-4 text-center px-2 my-2">
  <div class="services p-2 border-0 h-100 p-3 mb-0 bg-white rounded" >
	<div class="service mb-2 @if($rowData->description == "") mt-5 @endif">
        @if ($rowData->title)
            @php
                $subHead = '';
                if($rowData->title){
                    $subHead = str_replace(' ', '&nbsp; ', $rowData->title);
                }
            @endphp
            <div class="volunteering-head-title mb-2">
                {!! $subHead !!}
            </div>
        @endif
            
        <div class="icons"><img alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" ></div>
        @if($rowData->description)
            @php
                $head = explode('</p>', $rowData->description)[0] ."</p>";
                $body = str_replace($head, '', $rowData->description);
            @endphp
            <div class="volunteering-sub-head-title">
                {!! $head !!}
            </div>
        @endif
        {{-- <div class="volunteering-sub-head-title">
            @php
                    $subHead = '';
                if($rowData->title){
                    $subHead = str_replace(' ', '&nbsp; ', $rowData->title);
                }
            @endphp
            {!! $subHead !!}
        </div> --}}

        {{-- @if ($rowData->description)
            @php
                $head = explode('</p>', $rowData->description)[0] ."</p>";
                $body = str_replace($head, '', $rowData->description);
            @endphp
            <div class="volunteering-head-title">
                {!! $head !!}
            </div>
        @endif
        <div class="icons"><img alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" ></div>
        <div class="volunteering-sub-head-title">
            @php
                    $subHead = '';
                if($rowData->title){
                    $subHead = str_replace(' ', '&nbsp; ', $rowData->title);
                }
            @endphp
            {!! $subHead !!}
        </div> --}}
	</div>
	<div class="text-left text-break volunteeting-body">
	 {!! $body !!}
	</div>
	{{-- @if($rowData->link) --}} 
	{{-- @endif --}}
  </div>
</div>

<style>
    .volunteering-head-title{
        color: var(--base-color);
        font-size: 17px; 
        font-family: 'BEBAS';
        text-transform: uppercase;
        letter-spacing: 1px;
    }
    .volunteering-sub-head-title{
        
        color: #454545 !important;
        font-size: 14px; 
        font-family: 'BEBAS';
        font-weight: bold;
        width: 65%;
        height: 40px;
        line-height: 20px;
        letter-spacing: 1px;
        display: block;
        margin: auto ;
        text-transform: uppercase;
    }
    .volunteeting-body{
        line-height: 14px;
    }
</style>

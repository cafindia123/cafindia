@extends('master')
@section('content')
<style>
  .trustee-container{
    width: 90%;
  }
  .trustee-image-container{
    width: 100%;
    margin: auto;
    height: 300px;
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
</style>
<!-- ======= Hero Section ======= -->
<section id="hero">
<div class="hero-container">
  @php
    $trustee_detail = DB::table('trustee_detail')->where('id', 1)->first();
  @endphp
  <div class="row">
	<div class="col-md-12">
	  <div class="herotext">
		{{ $trustee_detail->small_title }}
		<h2><span style="color:var(--base-color)">{{ $trustee_detail->title }}</span></h2>
		<br>
		{!! $trustee_detail->description !!}
	  </div>
	  @if( $trustee_detail->image )
        <div class="hero-container-banner-image" style="background-image: url({{ $trustee_detail->image }});">
          {{-- <img src="{{ Voyager::image( $dataRow->image ) }}"/> --}}
        </div>
      @endif
	</div>
  </div>
</div>
</section>
  <!-- End Hero -->
  <main id="main">
    <section class="container-fluid">
      <div class="container-inner">
        <div class="row">
          @if(isset($trustees['OGT']))
            @foreach($trustees['OGT'] as $rowKey=>$rowData)
              <div class="col-md-3 mb-5" data-toggle="modal" data-target="#staticBackdropOGT{{ $rowKey }}">
                <div class="trustee-container item  c-pointer">
                  <div>
                    <img src="{{Voyager::image( $rowData->image )}}" height="280" class="img-responsive" />
                  </div>
                  <div class="borders"></div>
                  <div class="trustee-name">
                    <h3>{{$rowData->name}}</h3>
                    {{$rowData->designation}}
                  </div>
                </div>
              </div>
              <div class="modal fade" id="staticBackdropOGT{{ $rowKey }}" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabelOGT{{ $rowKey }}" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">
                    <div class="p-4" style="width: 100%;">
                      <div class="" style="float: left; width: 25%;">
                        <div>
                          <img src="{{Voyager::image( $rowData->image )}}" height="150"  />
                        </div>
                        <div class="item">
                          <div class="borders"></div>
                          <div class="trustee-name" style="max-width: 170px;">
                            <h3>{{$rowData->name}}</h3>
                            {{$rowData->designation}}
                          </div>
                        </div>
                      </div>
                      <div class="ml-2" style="float: left; width: 71%;">
                        <p>{!! $rowData->description !!}</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            @endforeach
          @endif
        </div>
      </div>
    </section>
    @if(isset($trustees['OGT']))
      <section class="container-fluid">
        <div class="container-inner">
        <div class="row">
          <div class="col-md-12 mt-5 mb-2">
            <h3 class="heading_c">Former Trustees</h3>
          </div>
          @foreach($trustees['FT'] as $rowKey=>$rowData)
              <div class="col-md-3 mb-5" data-toggle="modal" data-target="#staticBackdropFT{{ $rowKey }}">
                <div class="trustee-container item c-pointer">
                  <div>
                    <img src="{{Voyager::image( $rowData->image )}}" height="280" class="img-responsive" />
                  </div>
                  <div class="borders"></div>
                  <div class="trustee-name">
                    <h3>{{$rowData->name}}</h3>
                    {{$rowData->designation}}
                  </div>
                </div>
              </div>
              <div class="modal fade" id="staticBackdropFT{{ $rowKey }}" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabelFT{{ $rowKey }}" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">
                    <div class="p-4" style="width: 100%;">
                      <div class="" style="float: left; width: 25%;">
                        <div>
                          <img src="{{Voyager::image( $rowData->image )}}" height="150"  />
                        </div>
                        <div class="item">
                          <div class="borders"></div>
                          <div class="trustee-name" style="max-width: 170px;">
                            <h3>{{$rowData->name}}</h3>
                            {{$rowData->designation}}
                          </div>
                        </div>
                      </div>
                      <div class="ml-2" style="float: left; width: 71%;">
                        <p>{!! $rowData->description !!}</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            @endforeach
          </div>
        </div>
      </section>
    @endif
  </main><!-- End #main -->
@endsection
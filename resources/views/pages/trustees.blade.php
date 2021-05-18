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
  <div class="row">
	<div class="col-md-12">
	  <div class="herotext">
		Our Governance
		<h2><span style="color:var(--base-color)">Trustees</span></h2>
		<br>
		Our Trustees delegate management responsibilities
		to the Chief Executive and certain other functions to our sub-committees.
	  </div>
	  <img src="assets/image/trustees.jpg">
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
              <div class="col-md-3">
                <div class="trustee-container item">
                  <div class="trustee-image-container" style="background-image: url({{Voyager::image( $rowData->image )}})">
                  </div>
                  <div class="borders"></div>
                  <div class="trustee-name">
                    <h3>{{$rowData->name}}</h3>
                    {{$rowData->designation}}
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
              <div class="col-md-3">
                <div class="trustee-container item">
                  <div class="trustee-image-container" style="background-image: url({{Voyager::image( $rowData->image )}})">
                  </div>
                  <div class="borders"></div>
                  <div class="trustee-name">
                    <h3>{{$rowData->name}}</h3>
                    {{$rowData->designation}}
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
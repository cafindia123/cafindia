@extends('master')
@section('content')
<style>
  .trustee-container{
    width: 90%;
  }
  .trustee-image-container{
    width: 100%;
    margin: auto;
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
  .team-name-container{
    width: 30%;
  }
  .team-name h3 {
    color: var(--base-color);
    font-size: 20px;
    margin: 20px 0;

    font-weight: bold;
}
  }
  .team-about-container{
    width: 65%;
  }
</style>
<!-- ======= Hero Section ======= -->
<section id="hero">
<div class="hero-container">
  <div class="row">
	<div class="col-md-12">
	  <div class="herotext">
		<h2> <span style="color:var(--base-gray)">OUR</span> <span style="color:var(--base-color)">Team</span></h2>
		<br>
		Our Team delegate management responsibilities
		to the Chief Executive and certain other functions to our sub-committees.
	  </div>
	  <img src="assets/image/trustees.jpg">
	</div>
  </div>
</div>
</section>
  <!-- End Hero -->
  <main id="main">
    @foreach ($team as $sectionKey=>$sectionData)
      <section class="container-fluid">
        <div class="container-inner">
          <h3 class="heading_c">{{ $sectionKey }}</h3>
          <div class="row p-3">
            @foreach ($sectionData as $rowKey=>$rowData)
              {{-- <div class="col-md-3">
                <div class="trustee-container item">
                  <div class="trustee-image-container" style="background-image: url({{Voyager::image( $rowData->image )}})">
                  </div>
                  <div class="borders"></div>
                  <div class="trustee-name">
                    <h3>{{$rowData->name}}</h3>
                    {{$rowData->designation}}
                  </div>
                </div>
              </div> --}}
              <div class="col-md-12 p-0 mb-3 custom-media-style">
                @if($rowData->image)
                    <div class="custom-media-file left-style" style="background-image: url({{ Voyager::image( $rowData->image )}});" ></div>
                @endif
                <div class="custom-media-text @if($rowData->image) @else w-100 @endif right-style d-flex justify-content-evenly">
                  <div class="team-name-container">
                    <div class="team-name">
                      <h3>{{$rowData->name}}</h3>
                    </div>
                    <div class="team-designation">
                      {{$rowData->designation}}
                    </div>
                  </div>
                  <div class="team-about-container">
                    <div class="team-about">
                      {{-- {{ $rowData->about }} --}}
                    </div>
                    <div>
                      {{-- @if($rowData->link)
                            <a style="color: inherit" href="{{ $rowData->link }}" target="_blank" title="{{$rowData->link_text}}">{{ $rowData->title }}</a>
                        @else
                            <a style="color: inherit" href="{{ '/content-details/'.$mainSlug.'/'.$rowData->slug }}">{{ $rowData->title }}</a>
                        @endif
                    </div> --}}
                  </div>
                </div>
                <div style="clear: both;"></div>
            </div> 
            @endforeach
          </div>
        </div>
      </section>
    @endforeach
  </main><!-- End #main -->
@endsection

@section('javascript')
    
  <script>
    $(function(){
      $('.trustee-image-container').height($('.trustee-image-container').width() * 1.2);
    });
  </script>
@endsection
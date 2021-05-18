@extends('master')
@section('content')
<section id="hero">
	<div class="hero-container">
	  <div class="row">
		<div class="col-md-12">
		  <div class="herotext">
            <h2>Donate<span style="color:var(--base-color)"> Now</span></h2>
            <br>
            Become a valued CAF India partner and increase your chances of getting noticed
	        </div>
			<img src="{{ Voyager::image( 'primary-pages/December2020/OL5gSEAdIxjDVxmBg5v4.jpg' ) }}"/>
		</div>
	  </div>
	</div>
</section>
<main id="main">
	@include("pages.donate-now-store") 
</main>
@endsection
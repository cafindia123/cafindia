@extends('master')
@section('content')
<!-- ======= Hero Section ======= -->
<section id="hero">
	<div class="hero-container">
	  <div class="row">
		<div class="col-md-12">
		  <div class="herotext">
            <h2>{{ str_word_count($dataRow->name)>1? strstr($dataRow->name ,' ',true ):$dataRow->name }}<span style="color:var(--base-color)">{{strstr ($dataRow->name,' ')}}</span></h2>
			<br>
			<p class="">Experience:{{$dataRow->email}}</p>
			<p class="">Location:{{$dataRow->ip_address}}</p>
		  </div>
		  @if( $dataRow->image ) 
			<img src="{{ Voyager::image( $dataRow->image )}}" />
		  @endif
		</div>
	  </div>
	</div>
</section>
<main id="main">
	<section class="servicesection2">
	  <div class="container">
		<h3 class="heading_c"></h3>
		<div class="row">
		  <div class="col-md-12">
			{!! $dataRow->message !!}
		  </div>
		</div>
		<div class="row">
			<div class="col-md-12">
				@if(json_decode($dataRow->document) !== null)
				@foreach(json_decode($dataRow->document) as $file)
					<a href="{{ Storage::disk(config('voyager.storage.disk'))->url($file->download_link) ?: '' }}" target="_blank">
						{{ $file->original_name ?: '' }}
					</a>
					<br/>
				@endforeach
				@elseif($dataRow->document)
				<a href="{{ Storage::disk(config('voyager.storage.disk'))->url($dataRow->document) }}" target="_blank">
					Download Document
				</a>
				@endif
			</div>
		</div>
	  </div>
	</section>
</main>
 @endsection
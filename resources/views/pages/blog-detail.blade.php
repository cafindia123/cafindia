@extends('master')
@section('content')
<!-- ======= Hero Section ======= -->
{{-- <section id="hero">
	<div class="hero-container">
	  <div class="row">
		<div class="col-md-12">
		  <div class="herotext">
            <h2>{{ str_word_count($dataRow->title)>1? strstr($dataRow->title ,' ',true ):$dataRow->title }}<span style="color:var(--base-color)">{{strstr ($dataRow->title,' ')}}</span></h2>
			<br>
		   {{$dataRow->excerpt}}
		  </div>
		  @if( $dataRow->image ) 
			<img src="{{ Voyager::image( $dataRow->image )}}" />
		  @endif
		</div>
	  </div>
	</div>
</section> --}}

<section id="hero">
	<div class="hero-container">
		<div class="row">
			<div class="col-md-12">
				<div class="herotext">
					{{--<h4>{{$dataRow->title }}</h4>--}}
					<h2 class="head-title">
						@if (str_word_count($dataRow->title) > 1)
							@php
								$title = explode(' ', trim($dataRow->title));
							@endphp
							@if (count($title) == 1)
								{{ $title[0] }} 	
							@elseif (count($title) == 2 )
								{{ $title[0] }} <span style="color:var(--base-color)">{{ $title[1] }}</span>
							@else
								{{ $title[0] . ' ' . $title[1]  }}<br>
								<span style="color:var(--base-color)">
									@for ($i=2; $i< count($title); $i++)
										{{ $title[$i] . ' ' }}
									@endfor
								</span>
								{{-- {{ strstr($dataRow->title ,' ',true ) . ' ' .strstr (strstr ($dataRow->title,' ') ,' ', true) }}<br>{{ strstr (strstr ($dataRow->title,' ') ,' ') }} --}}
							@endif
						@else
							{{ $dataRow->title }}
						@endif
                        {{-- {{ str_word_count($dataRow->title) > 1 ? strstr($dataRow->title ,' ',true ) : $dataRow->title }}
						<span style="color:var(--base-color)">{{ strstr ($dataRow->title,' ')}}</span></h2> --}}
					</h2>
					<br>
					{!! $dataRow->excerpt !!}
					@if($dataRow->link)
						<a class="@if($dataRow->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$dataRow->link}}">{{$dataRow->link_text}}</a>
					@endif
				</div>
				@if( $dataRow->image )
					<div class="hero-container-banner-image" style="background-image: url({{ Voyager::image( $dataRow->image ) }});">
						{{-- <img src="{{ Voyager::image( $dataRow->image ) }}"/> --}}
					</div>
					{{-- <img src="{{ Voyager::image( $dataRow->image ) }}" width="100%"/> --}}
				@endif
			</div>
		</div>
	</div>
</section>
<main id="main">
	<section class="container-fluid">
	  <div class="container-inner">
		<h3 class="heading_c">{{isset($dataRow->category['name'])? $dataRow->category['name'] :''}}</h3>
		<div class="row">
		  <div class="col-md-12">
			{!! $dataRow->body !!}
		  </div>
		</div>
	  </div>
	</section>
</main>
 @endsection
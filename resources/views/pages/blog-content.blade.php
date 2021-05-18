@extends('master')
@section('content')
{{-- 
<section id="hero">
	<div class="hero-container">
		<div class="row">
			<div class="col-md-12"> 
				<div class="herotext">
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
							@endif
						@else
							{{ $dataRow->title }}
						@endif 
					</h2>
                    
					<br>
					{!! $dataRow->excerpt !!}
					@if($dataRow->link)
						<a class="@if($dataRow->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$dataRow->link}}">{{$dataRow->link_text}}</a>
					@endif
				</div>
                
				@if( $dataRow->footerPageSection->post->image  )
					<div class="hero-container-banner-image" style="background-image: url({{ Voyager::image( $dataRow->footerPageSection->post->image ) }});">
					</div>
				@endif
			</div>
		</div>
	</div>
</section> --}}
<main id="main">
	<style>
		.close-btn{
			display: inline-block; 
			border-radius: 10px;
			padding: 2px 10px;
			margin-right: 20px;
			transition: .3s;
			font-family: 'Gotham-Light';
			position: relative; 

		}
		.close-btn span{
			position: relative;
			z-index: 20;
		}
		.close-btn span i {
			
			display: inline-block; 
			border-radius: 50%;
			background: var(--base-color);
			color:white;
			padding:3px 5px; 
		}
		.close-btn:hover::before{ 
			transform: scaleX(1);
		}
		.close-btn:hover{  
			color:white;
		}
		.close-btn:hover .close-btn span i{  
			color: var(--base-color);
			background:white;
		}
		.close-btn::before{
			content: ' ';
			position: absolute;
			border-radius: 20px;
			top: 0;
			left: 0;
			transition: .3s;
			transform: scale(0);
			transform-origin: 85% 40%;
			width: 100%;
			height: 100%;
			background: var(--base-color);
			color: white;
			z-index: 8;
		}
		.inner-shadow{
			box-shadow: inset 0 5px 15px -5px rgba(0,0,0,.9);
		}
	</style>
	<section class="container-fluid inner-shadow" >
		<div class="text-right">
			<a href="{{ redirect()->back()->getTargetUrl() }}">
				<div class="close-btn">
					<span >
						CLOSE <i class="fas fa-times"></i> 
					</span>
				</div>
			</a>
		</div>
		<div class="container-inner">
			<div class="row mt-3">
				<div class="col-md-12">
					@if ($dataRow->image)
						<div class="blog-content-image-container">
							<img src="{{ Voyager::image( $dataRow->image ) }}" height="100%" />
						</div>
					@endif
					@if ($dataRow->title)
						<h3 class="heading_c mb-4">
							{{ $dataRow->title }}
						</h3>
					@endif
					<span class="text-description">
						{!! $dataRow->description !!}
					</span>
					<div style="clear: both"></div>
				</div>
			</div>
		</div>
	</section>
</main>
<style>
    .blog-content-image-container{ 
        height: 250px;
		margin-bottom: 20px;
		margin-left: 20px;
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        float: right;
    }
	.text-description{
		text-align: justify !important;
	}
</style>
 @endsection
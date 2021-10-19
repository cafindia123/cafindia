@extends('master')
@section('content')
<style>
	@media (min-width:768px) {
		img.img-fluid-height-w  {
			width: 100%;
			height: 230px;
			display: inline-block;
		}.card-set{
			padding-top:0px;
            height:115px;
		}
	}
	#main .container-fluid{
		padding-top: 20px ;
		padding-bottom: 20px;
		margin: 0;
	}
	#main .container-fluid.bg-dark{
		color:#fff;
		padding-top: 30px;
		padding-bottom: 15px;
	}
	#main .container-fluid.bg-light{
		background-color: #f3f3f3 !important; 
	}
	.short-text {
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
	}
	.card-bottom {
		padding: 20px;width: 100%;
		height: auto;
		display: inline-block;
		overflow: hidden;
	}.card-bottom.text-left.card-set {
		height: auto;
	}
	.small-text {
		height: 168px;
		overflow:hidden;display:inline-block;
	}
	.big-text {
		height: auto;
	}.services {
		min-height: auto;
		margin-bottom: 30px;
	}
	.readme{
		height:224px;
		overflow:hidden;}
	.col-md-2 .read{
		overflow:hidden;
		margin: 5px;
		}
	.read{
		overflow:hidden;}
		.col-md-2 .service h3{
			height:38px;
		}
	@media (min-width: 1024px){
		#hero p {
			width: auto;
		}

		#hero p {
			width: auto;
			-webkit-animation-delay: 0.4s;
			animation-delay: 0.4s;
			color: inherit;
			font-family: inherit;
		}
		.primary-child{
			background:#e3e3e3;
		}
	}
    .MsoNormal{
        padding: 5px 0;
    }
    ul li{
        padding: 5px 0;
        list-style: none;
    }
	.herotext a{
		font-family: "GothamBlack";
	}
	.heading_c{
		font-family: 'BEBAS';
		font-weight: 400;
	}
</style>
<!-- ======= Hero Section ======= -->
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
								{!! $title[0] .'&nbsp; ' !!} <span style="color:var(--base-color)">{!! $title[1] !!}</span>
							@else
								@if (strtolower($dataRow->title) == 'caf i direct')
									{!! $title[0] !!} <span style="font-family: Scribble-Regular !important; font-size: 95px; text-transform: lowercase">{!! $title[1] !!}</span>
								@else
									{!! $title[0].' &nbsp;'.$title[1] !!}
								@endif
								<span style="color:var(--base-color)">
									@for ($i=2; $i< count($title); $i++)
										{!! '&nbsp; '.$title[$i] !!}
									@endfor
								</span>
								{{-- {{ strstr($dataRow->title ,' ',true ) . ' ' .strstr (strstr ($dataRow->title,' ') ,' ', true) }}<br>{{ strstr (strstr ($dataRow->title,' ') ,' ') }} --}}
							@endif
						@else
							{!! $dataRow->title !!}
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
				@endif
			</div>
		</div>
	</div>
</section>
<main id="main">
	<?php
		$lastBgStyle = 0;
		$alternateBool = false;
		$pattern = "/<p[^>]*>(\s|&nbsp;)*<\\/p[^>]*>/";
		$alternate=0;
		$it= 1;
		$isImage=TRUE;
		$isImageDone=false;
	?>

	@if ($dataRow->alignment_type=='TR')
		@php $lastBgStyle = 0; @endphp
		<div class="container-fluid bg-while">
			<div class="container-inner">
				<div class="row">
					<div class="@if ($dataRow->story_of_hope) col-md-8 @else col-md-12 @endif">
						@if(!empty(preg_replace($pattern, '',$dataRow->body ) ) )
							<div class="row">
								<div class="col-md-12">
									<h3 class="heading_c">{{ $dataRow->body_heading }}</h3>
									{!! $dataRow->body !!}
								</div>
							</div>
						@endif
						@if($dataRow->section_children->isNotEmpty())
							@foreach($dataRow->section_children as $rowKey=>$rowData)
								<?php
									$alternate++;
									$rowDataTop = $rowData;
									if($it == 1 ){
										$class = "how-can-help";
										$itloo= 1;
										$it= 0;
									}else{
										$class = "how-can-help";
										$itloo= 0;
										$it= 1;
									}
								?>
								<div class="row mb-5">
									<div class="col-md-12">
										@if($rowData->template_type == 'MEDIA' )
												@include('pages.primary-layout.single')
										@elseif($rowData->template_type == 'CUSTOM_LAYOUT' )
												@include('pages.primary-layout.single')
										@elseif($rowData->template_type == 'CARDS' )
											@if ($rowData->title)
												<h3 class="heading_c">{{$rowData->title}}</h3>
											@endif

											@if ($rowData->description)
												<p>{!! $rowData->description !!}</p>
											@endif
											
											<div class="row d-flex align-items-stretch card-type-container">
												@if($rowData->card_children->isNotEmpty())
													@foreach($rowData->card_children as $rowKey=>$rowData)
														@if($rowData->image_icon == 1 )
															@include('pages.primary-layout.image')
															@php $isImage=true; @endphp
														@elseif($rowData->image_icon == 2 )
															{{ $rowDataTop }}
															@include('pages.primary-layout.icon')
														@elseif($rowData->image_icon == 3 )
															@include('pages.primary-layout.without-image-icon')
														@endif
													@endforeach
												@endif
											</div>
										@endif
									</div>
								</div>
								@if($alternate%2 == 0)
									<?php $alternateBool = false; ?>
								@else
									<?php $alternateBool = true; ?>
								@endif

							@endforeach
						@endif

						@if ($dataRow->category->slug == 'Partner-Selection-And-Due-Diligence')
							<div class="row">
								<div class="col-md-12 d-flex justify-content-between">
									<img src="/assets/image/get-ngo-registration.jpg" height="140"  />
									<div class="w-100 mr-5 d-flex justify-content-center" style="background-color: #dedede; ">
										<div class="align-self-center">
											<div style="font-size: 18px; letter-spacing: 1px; padding: 15px;">Get your NGO validated/registered</div>
											<div style="text-align: right; margin-top: 20px;">
												<a class="vs_link style-normal color-turquoise my-3" href="https://cafindia.jaisalmercity.com/register"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> Click Here</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						@endif
					</div>
					@if ($dataRow->story_of_hope)
						<div class="col-md-4">
							@if ($dataRow->featured_storys()->isNotEmpty())
								@include('pages.primary-layout.related-materials-top')
							@endif
							@include('pages.primary-layout.featured-story')
						</div>
					@endif
				</div>
			</div>
		</div>
	@else
		@if(!empty(preg_replace($pattern, '',$dataRow->body ) ) )
			@php $lastBgStyle = 0; @endphp
			<section class="container-fluid bg-while">
				<div class="container-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-12">
									<h3 class="heading_c">{{ $dataRow->body_heading }}</h3>
									{!! $dataRow->body !!}
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		@endif
		@if($campaigns && $campaigns->isNotEmpty())
			@foreach($campaigns as $rowKey=>$rowData)
				<?php
					$alternate++;
					$rowDataTop = $rowData;
					if($it == 1 ){
						$class = "how-can-help";
						$itloo = 1;
						$it= 0;
					}else{
						$class = "how-can-help";
						$itloo = 0;
						$it= 1;
					}
				?>
				<section class="my-0 py-0 container-fluid">
					<div class="container-inner">
						<div class="row">
							<div class="col-lg-12 col-md-12">
								@include('pages.primary-layout.custom-single')
							</div>
						</div>
					</div>
				</section>
			@endforeach
		@endif
		@if($dataRow->section_children->isNotEmpty())
			<?php
				if ($lastBgStyle == 1) $lastBgStyle = 0;
				else $lastBgStyle = 1;
			?>
			{{-- @if ($dataRow->category->slug == 'volunteering' && $dataRow->category->category_children_parent->slug == 'for-companies') --}}
			@if ($dataRow->category->slug == 'volunteering')
				<?php 
					$alternate = 1;
				?>
				<section class="container-fluid bg-white">
					<div class="container-inner">
						<div class="row">
							<div class="col-md-12">
								@php $rowDataTop = $dataRow->section_children[0]; $rowData = $dataRow->section_children[0]; @endphp
								@include('pages.primary-layout.single')
							</div>
						</div>
					</div>
				</section>
				<section class="container-fluid bg-light">
					<div class="container-inner">
						<div class="row">
							<div class="col-md-8">
								@php $rowDataTop = $dataRow->section_children[1]; $rowData = $dataRow->section_children[1]; @endphp
								<h3 class="heading_c">{{$rowData->title}}</h3>
								<p>{!! $rowData->description !!}</p>
								<div class="row d-flex align-items-stretch volunteering-card">
									@if($rowData->card_children->isNotEmpty())
										@foreach($rowData->card_children as $rowKey=>$rowData)
											@if($rowData->image_icon == 1 )
												<div class="col-lg-{{12/$rowDataTop->columns_in_rows}} col-md-6">
													<div class="cards">
														<div class="card-head">
															<h6 class="text-center p-4">{{$rowData->title}}</h6>
														</div>
														<div class="topSection text-center">
															@if($rowData->image)
																<img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" style="width:50%; height: 90px; padding: 10px;">
															@endif
														</div>
														<div class="card-bottom" style="height: auto;">
															<p>{!! $rowData->description !!}</p>
															@if($rowData->link)
																<a class="@if($rowData->link_type == 'BUTTON') btn obo-btn @else vs_link @endif" href="{{$rowData->link}}">{{$rowData->link_text}}</a>
															@endif
														</div>
													</div>
												</div>
											@elseif($rowData->image_icon == 2 )
												@include('pages.primary-layout.volunteering-icon')
											@elseif($rowData->image_icon == 3 )
												@include('pages.primary-layout.without-image-icon')
											@endif
										@endforeach
									@endif
									<div class="col-md-12">
    									<a class="btn obo-btn mt-0" href="https://cafindia.jaisalmercity.com/register">Sign up to receive volunteering alerts</a>
									</div>
								</div>
							</div>
							<div class="col-md-4  d-flex align-items-stretch">
								<div class="h-100">
									@php $rowDataTop = $dataRow->section_children[2]; $rowData = $dataRow->section_children[2]; @endphp
									<h3 class="heading_c">{{$rowData->title}}</h3>
									<div class="volunteering-side-card">
										<div class="image-container">
											@if($rowData->image)<img class="md_hidden" title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}">@endif
										</div>
										<div class="py-2 px-4">
											<p>{!! $rowData->description !!}</p>
											@if($rowData->link)
											<div class="volunteering-side-card-link">
												<a class="@if($rowData->link_type == 'BUTTON') btn btn-primary donate_btn @else vs_link color-turquoise @endif" style="margin: 0px;" href="{{$rowData->link}}" target="_blank">@if($rowData->link_type != 'BUTTON')<i class="fa fa-angle-double-right"></i>@endif {{$rowData->link_text}}</a>
											</div>
											@endif
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</section>
			@else
				@foreach($dataRow->section_children as $rowKey=>$rowData)
					<?php
						$alternate++;
						$rowDataTop = $rowData;
						if($it == 1 ){
							$class = "how-can-help";
							$itloo = 1;
							$it= 0;
						}else{
							$class = "how-can-help";
							$itloo = 0;
							$it= 1;
						}
					?>
					<section class="@if($rowData->template_type == 'CUSTOM_LAYOUT') my-0 py-0 @endif container-fluid @if($rowData->bg_style == 'auto' ) @if($lastBgStyle == 1) bg-white @else bg-light @endif @else bg-{{ $rowData->bg_style }} @endif" 
						  >
						<div class="container-inner">
							<div class="row">
								<div class="col-md-12">
									@if( $rowData->template_type == 'MEDIA' )
										@include('pages.primary-layout.single')
									@elseif( $rowData->template_type == 'CUSTOM_LAYOUT' )
										@include('pages.primary-layout.custom-single')
									@elseif($rowData->template_type == 'CARDS' )
										<h3 class="heading_c">{{$rowData->title}}</h3>
										<p>{!! $rowData->description !!}</p>
										@if ($dataRow->slug == 'csr-policy-and-strategy-development')
											<div class="row d-flex justify-content-between card-type-container">
												@if($rowData->card_children->isNotEmpty())
													@foreach($rowData->card_children as $rowKey=>$rowData)
														@if($rowData->image_icon == 1 )
															@include('pages.primary-layout.image')
															@php $isImage=true; @endphp
														@elseif($rowData->image_icon == 2 )
															@include('pages.primary-layout.custom-csr-icon')
														@elseif($rowData->image_icon == 3 )
															@include('pages.primary-layout.without-image-icon')
														@endif
													@endforeach
												@endif
											</div>
										@else
											<div class="row d-flex align-items-stretch card-type-container">
												@if($rowData->card_children->isNotEmpty())
													@foreach($rowData->card_children as $rowKey=>$rowData)
														@if($rowData->image_icon == 1 )
															@include('pages.primary-layout.image')
															@php $isImage=true; @endphp
														@elseif($rowData->image_icon == 2 )
															@include('pages.primary-layout.icon')
														@elseif($rowData->image_icon == 3 ) 
															@include('pages.primary-layout.without-image-icon')
														@endif
													@endforeach
												@endif
											</div>
										@endif
									@elseif($rowData->template_type == 'CUSTOM' )
										<h3 class="heading_c">{{$rowData->title}}</h3>
										<p>{!! $rowData->description !!}</p>
										<div class="row">
											@if($rowData->card_children->isNotEmpty())
												@php
													$rows = ceil((int) count($rowData->card_children) / (int) $rowData->columns_in_rows );
													$item = 0;
													$width = 100 / $rowData->columns_in_rows;
												@endphp
												@foreach($rowData->card_children as $rowKey=>$rowData)

													@if($rowData->image_icon == 1)
														<div class="custom-card-container align-self-stretch p-0 m-0 mb-3" style="width: {{ $width }}%">
															@include('pages.primary-layout.custom-image')
															@php $isImage=true; @endphp
														</div>
													@else
														@if ($item == 0)
															<div class="custom-card-container custom-style mt-5 col-md-12 d-flex justify-content-between">
														@endif
																@if($rowData->image_icon == 2 )
																	@include('pages.primary-layout.custom-icon')
																@elseif($rowData->image_icon == 3 )
																	@include('pages.primary-layout.custom-without-image-icon')
																@endif
														@if ($item == ($rowDataTop->columns_in_rows - 1))
															</div>
														@endif
														@if($rowDataTop->columns_in_rows <= $item )
															@php $item = 0 @endphp
														@else
															@php $item++ @endphp
														@endif
													@endif

												@endforeach
											@endif
										</div>
									@endif
								</div>
							</div>
						</div>
					</section>
					<?php
						if($rowData->bg_style == 'white') $lastBgStyle = 0;
						else {
							if ($lastBgStyle == 1) $lastBgStyle = 0;
							else $lastBgStyle = 1;
						}
						if($alternate%2 == 0)
							$alternateBool = false;
						else
							$alternateBool = true;
					?>
				@endforeach
			@endif
		@endif
		@if ($dataRow->story_of_hope)
			<section class="container-fluid bg-white">
				<div class="container-inner">
					<div class="row d-flex align-items-stretch">
						@if ($dataRow->alignment_type == 'IB')
							@if ($dataRow->blog_heading)
								<div class="col-md-12">
									<h3 class="heading_c">{{$dataRow->blog_heading}}</h3>
								</div>
							@endif
							<div class="col-md-8">
								@include('pages.primary-layout.blog-cards')
							</div>
							<div class="col-md-4">
								@if ($dataRow->story_of_hope)
									@include('pages.primary-layout.featured-story')
								@endif
							</div>
						@elseif ($dataRow->alignment_type == 'B')
							@if ($dataRow->featured_storys()->isNotEmpty())
								@include('pages.primary-layout.related-materials')
							@endif
							<div class="@if($dataRow->join_us_block) col-md-8 @endif col-md-4" style="overflow: hidden !important">
								@if ($dataRow->story_of_hope)
									@include('pages.primary-layout.featured-story')
								@endif
							</div>
						@endif
						@php $isImageDone = true; @endphp
					</div>
				</div>
			</section>
		@endif
	@endif
	{{-- Campaigns --}}
	{{-- @if($showContactUs)
	<section class="container-fluid bg-white">
        <div class="container-inner">
			<div class="contact">
				<div class="row">
					<div class="col-lg-8" data-aos="fade-up">
						<h2 class="donate_section">Contact Us</h2>
						<p>
						If you still have questions, or want to know more about CAF India, we'd love to hear from you.
						</p>
					</div>
					<div class="col-lg-4 text-right" data-aos="fade-up">
						<a href="{{route('contactUs')}}" class="btn btn-primary donate_btn">Get in Touch</a>
					</div>
			   </div>
			</div>
		</div>
    </section>
	@endif --}}
</main>
<style>

	.volunteering-side-card{
		background: #d8d8d8;
		height: 92%;
		position: relative;
	}
	.volunteering-side-card-link{
		position: absolute;
		bottom: 20px;
	}
</style>
 @endsection
 @section('stylesheet')
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 @stop
 @section('javascript')
 <script>
 (function($) {
	$.fn.shorten = function (settings) {

		var config = {
			showChars: 100,
			ellipsesText: "...",
			moreText: "more",
			lessText: "less"
		};

		if (settings) {
			$.extend(config, settings);
		}

		$(document).off("click", '.morelink');

		$(document).on({click: function () {

				var $this = $(this);
				if ($this.hasClass('less')) {
					$this.removeClass('less');
					$this.html(config.moreText);
				} else {
					$this.addClass('less');
					$this.html(config.lessText);
				}
				$this.parent().prev().toggle();
				$this.prev().toggle();
				return false;
			}
		}, '.morelink');

		return this.each(function () {
			var $this = $(this);
			if($this.hasClass("shortened")) return;

			$this.addClass("shortened");
			var content = $this.html();
			if (content.length > config.showChars) {
				var c = content.substr(0, config.showChars);
				var h = content.substr(config.showChars, content.length - config.showChars);
				var html = c + '<span class="moreellipses">' + config.ellipsesText + ' </span><span class="morecontent"><span>' + h + '</span> <a href="#" class="morelink">' + config.moreText + '</a></span>';
				$this.html(html);
				$(".morecontent span").hide();
			}
		});

	};

 })(jQuery);
 $(".read").shorten({
	"showChars" : 250,
	"moreText"	: "See More",
	"lessText"	: "Less",
});
 </script>
 @stop

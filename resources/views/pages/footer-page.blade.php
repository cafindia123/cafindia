@extends('master')
@section('content')
<style>
@media (min-width:768px) {
	img.img-fluid-height-w  {
		width: 100%;
		height: 180px;
		display: inline-block;
	}.card-set{
		padding-top:0px;height:115px;
	}
}
.short-text {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}
.card-bottom {
    padding: 20px;width: 100%;
	max-height: 275px;
	display: inline-block;
    overflow: hidden;
}.card-bottom.text-left.card-set {
    max-height: 275px;
}
.small-text {
    height: 168px;
    overflow:hidden;display:inline-block;
}
.big-text {
    height: auto;
}.services {
    min-height: 200px;
    margin-bottom: 30px;
}
.readme{
	height:224px;
	overflow:hidden;}
.col-md-2 .read{
	height:504px !important;
	overflow:hidden;
	}
.read{
	height:190px;
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
}

nav{
	display: inline-block;
}
nav div:first-child{
	display: none
}
.pagination-container ul li::before{ 
	background: none !important;
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
								{!! $title[0].' &nbsp;'.$title[1] !!}
								<span style="color:var(--base-color)">
									@for ($i=2; $i< count($title); $i++)
										{!! '&nbsp; '.$title[$i] !!}
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
					<img src="{{ Voyager::image( $dataRow->image ) }}"/>
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

	$mainSlug = $dataRow->slug;

	$thematicSlug = '';

	if($dataRow->category)
		$thematicSlug = $dataRow->category->slug;
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
								@if (str_word_count($dataRow->body_heading) > 1)
									<h3 class="heading_c mb-5" style="color: var(--base-gray)">
										@php
											$body_heading = explode(' ', trim($dataRow->body_heading));
										@endphp
										@if (count($body_heading) < 3)
											{{ $body_heading[0] }} <span style="color:var(--base-color)">{{ $body_heading[1] }}</span>
										@else
											{{ $body_heading[0] . ' ' . $body_heading[1]  }}
											<span style="color:var(--base-color)">
												@for ($i=2; $i< count($body_heading); $i++)
													{{ $body_heading[$i] . ' ' }}
												@endfor
											</span>
										@endif
									</h3>
								@else
									<h3>{{ $dataRow->body_heading }}</h3>
								@endif
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
									@elseif($rowData->template_type == 'CUSTOM' )
										@if($rowData->title != "")
											<h3 class="heading_c">{{$rowData->title}}</h3>
										@endif
										<p>{!! $rowData->description !!}</p>
										<div class="row d-flex align-items-stretch">
											@if($rowData->has_pagination)
												@foreach($rowData->card_children_paginated as $rowKey=>$rowData)
													@include('pages.primary-layout.custom-card')
												@endforeach
												<div class="col-md-12 pagination-container">
													{{ $rowDataTop->card_children_paginated->links('pagination::bootstrap-4') }}
												</div>
											@else
												@foreach($rowData->card_children as $rowKey=>$rowData)
													@include('pages.primary-layout.custom-card')
												@endforeach
											@endif
										</div>
									@elseif($rowData->template_type == 'CARDS' )
										<h3 class="heading_c">{{$rowData->title}}</h3>
										<p>{!! $rowData->description !!}</p>
										<div class="row d-flex align-items-stretch">
											@if($rowData->has_pagination )
												@foreach($rowData->card_children_paginated as $rowKey=>$rowData)
													@if($rowData->image_icon == 1 )
														@if ($thematicSlug == "thematic-impacts")
															@include('pages.primary-layout.thematic-image')
														@else
															@include('pages.primary-layout.image')
														@endif
														@php $isImage=true; @endphp
													@elseif($rowData->image_icon == 2 )
														@include('pages.primary-layout.icon')
													@elseif($rowData->image_icon == 3 )
													
														@include('pages.primary-layout.without-image-icon')
													@endif
												@endforeach
												<div class="col-md-12 pagination-container">
													{{ $rowDataTop->card_children_paginated->links('pagination::bootstrap-4') }}
												</div>
											@else
												@foreach($rowData->card_children as $rowKey=>$rowData)
													@if($rowData->image_icon == 1 )
														@if ($thematicSlug == "thematic-impacts")
															@include('pages.primary-layout.thematic-image')
														@else
															@include('pages.primary-layout.image')
														@endif
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
								</div>
							</div>
							@if($alternate%2 == 0)
								<?php $alternateBool = false; ?>
							@else
								<?php $alternateBool = true; ?>
							@endif

						@endforeach
					@endif
				</div>
				@if ($dataRow->story_of_hope)
					<div class="col-md-4">
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
								@if (str_word_count($dataRow->body_heading) > 1)
									<h3 class="heading_c mb-5" style="color: var(--base-gray)">
										@php
											$body_heading = explode(' ', trim($dataRow->body_heading));
										@endphp
										@if (count($body_heading) < 3)
											{{ $body_heading[0] }} <span style="color:var(--base-color)">{{ $body_heading[1] }}</span>
										@else
											{{ $body_heading[0] . ' ' . $body_heading[1]  }}
											<span style="color:var(--base-color)">
												@for ($i=2; $i< count($body_heading); $i++)
													{{ $body_heading[$i] . ' ' }}
												@endfor
											</span>
										@endif
									</h3>
								@else
									<h3>{{ $dataRow->body_heading }}</h3>
								@endif
								{!! $dataRow->body !!}
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	@endif
	@if($dataRow->section_children->isNotEmpty())
		<?php
			if ($lastBgStyle == 1) $lastBgStyle = 0;
			else $lastBgStyle = 1;
		?>

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
			<section class="container-fluid @if($rowData->bg_style == 'auto' ) @if($lastBgStyle == 1) bg-white @else bg-light @endif @else bg-{{ $rowData->bg_style }} @endif">
				<div class="container-inner">
					<div class="row my-2">
						<div class="col-md-12">
							@if($rowData->template_type == 'MEDIA' )
								@include('pages.primary-layout.single')
							@elseif($rowData->template_type == 'CUSTOM' )
								<h3 class="heading_c">{{ $rowData->title }}</h3>
								<p>{!! $rowData->description !!}</p>
								<div class="row d-flex align-items-stretch m-0">
									@if($rowData->has_pagination)
										@foreach($rowData->card_children_paginated as $rowKey=>$rowData)
											@if($rowDataTop->layout_style == 2)
												@include('pages.primary-layout.custom-card')
											@else
												@include('pages.primary-layout.custom-media')
											@endif
										@endforeach
										<div class="col-md-12 pagination-container">
											{{ $rowDataTop->card_children_paginated->links('pagination::bootstrap-4') }}
										</div>
									@else
										@foreach($rowData->card_children as $rowKey=>$rowData)
											@if($rowDataTop->layout_style == 2)
												@include('pages.primary-layout.custom-card')
											@else
												@include('pages.primary-layout.custom-media')
											@endif
										@endforeach
									@endif
								</div>
							@elseif($rowData->template_type == 'CARDS' )
								<h3 class="heading_c">{{$rowData->title}}</h3>
								<p>{!! $rowData->description !!}</p>
								<div class="row d-flex align-items-stretch ">
								    <?php 
								        $catSlug = $rowData->title
								    ?>
									@if($rowData->has_pagination)
									    
										@foreach($rowData->card_children_paginated as $rowKey=>$rowData)
											@if($rowData->image_icon == 1 )
											    @if ($thematicSlug == "thematic-impacts")
													@include('pages.primary-layout.thematic-image')
												@elseif(strpos(strtoupper($catSlug), 'ANNUAL REPORTS') !== false)
											        @include('pages.primary-layout.image-annual-report')
											    @else
													@include('pages.primary-layout.image')
												@endif
												@php $isImage=true; @endphp
											@elseif($rowData->image_icon == 2 )
												@include('pages.primary-layout.icon')
											@elseif($rowData->image_icon == 3 )
											    @if(strpos(strtoupper($catSlug), 'ANNUAL REPORTS') !== false)
											        @include('pages.primary-layout.without-image-icon-annual-report')
											    @else
												    @include('pages.primary-layout.without-image-icon')
											    @endif	
											@endif
										@endforeach
										<div class="col-md-12 pagination-container">
											{{ $rowDataTop->card_children_paginated->links('pagination::bootstrap-4') }}
										</div>
									@else
										@foreach($rowData->card_children as $rowKey=>$rowData)
											@if($rowData->image_icon == 1 )
												@if ($thematicSlug == "thematic-impacts")
													@include('pages.primary-layout.thematic-image')
												@elseif(strpos(strtoupper($catSlug), 'ANNUAL REPORTS') !== false)
											        @include('pages.primary-layout.image-annual-report')
											    @else
													@include('pages.primary-layout.image')
												@endif
												@php $isImage=true; @endphp
											@elseif($rowData->image_icon == 2 )
												@include('pages.primary-layout.icon')
											@elseif($rowData->image_icon == 3 )
											    @if(strpos(strtoupper($catSlug), 'ANNUAL REPORTS') !== false)
											        @include('pages.primary-layout.without-image-icon-annual-report')
											    @else
												    @include('pages.primary-layout.without-image-icon')
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
	@if ($dataRow->story_of_hope)
		<section class="container-fluid bg-white">
			<div class="container-inner">
				<div class="row d-flex align-items-stretch">
					@if ($dataRow->alignment_type == 'IB')
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
	{{-- <section class="container-fluid">
		<div class="container-inner">
			<div class="row d-flex align-items-stretch">
				<div class="col-md-12">
 					@include('pages.primary-layout.blog-cards-other')
				</div>
			</div>
		</div>
	</section> --}}
@endif
@endsection
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

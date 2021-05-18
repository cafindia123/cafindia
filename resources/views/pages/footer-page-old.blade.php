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
	height: 275px;
	display: inline-block;
    overflow: hidden;
}.card-bottom.text-left.card-set {
    height: 275px;
}
.small-text {
    height: 168px;
    overflow:hidden;display:inline-block;
}
.big-text {
    height: auto;
}.services {
    min-height: 357px;
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
</style>
<!-- ======= Hero Section ======= -->
<section id="hero">
	<div class="hero-container">
	  <div class="row">
		<div class="col-md-12">
		  <div class="herotext">
		  {{--<h4>{{$dataRow->title }}</h4>--}}
            <h2>{{ str_word_count($dataRow->title)>1? strstr($dataRow->title ,' ',true ):$dataRow->title }}<span style="color:var(--base-color)">{{strstr ($dataRow->title,' ')}}</span></h2>
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
<?php $alternateBool = false; 
$pattern = "/<p[^>]*>(\s|&nbsp;)*<\\/p[^>]*>/";
?>
@if(!empty(preg_replace($pattern, '',$dataRow->body ) ) )
	<?php $alternateBool = true; ?>
	<section class="servicesection2">
	  <div class="container">
		<h3 class="heading_c">{{$dataRow->title}}</h3>
		<div class="row">
		  <div class="col-md-12">
		  {!! $dataRow->body !!}
		  </div>
		</div>
	  </div>
	</section>
@endif
	@if($dataRow->section_children->isNotEmpty())
		<?php
	 $alternate=0;
			$it= 1;
			?>
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
			@if($rowData->template_type == 'MEDIA' )
				@include('pages.primary-layout.single')
			@elseif($rowData->template_type == 'CARDS' ) 
			<section class="{{ $itloo == 1 ? '':'container-fluid servicesection'}}">
			  <div class="container">
				<h3 class="heading_c">{{$rowData->title}}</h3>
				<p>{!! $rowData->description !!}</p>
				<div class="row"> 
				@if($rowData->card_children->isNotEmpty())
					@foreach($rowData->card_children as $rowKey=>$rowData)
						@if($rowData->image_icon == 1 )
							@include('pages.primary-layout.image')
						@elseif($rowData->image_icon == 2 )
							@include('pages.primary-layout.icon')
						@elseif($rowData->image_icon == 3 )
							@include('pages.primary-layout.without-image-icon')
						@endif
					@endforeach
				@endif
				</div>
			  </div>
			</section>
			@endif
	
			@if($alternate%2 == 0)
				<?php $alternateBool = false; ?>
			@else
				<?php $alternateBool = true; ?>
			@endif
			
		@endforeach
	@endif
	{{--
	@if($relatedPrimaryPage->isNotEmpty())
	 <section id="how-can-help" class="@if($alternateBool) servicesection @endif">
      <div class="container-fluid">
        <div class="container @if(!$alternateBool) mt-4 @endif">
          <div class="row @if($alternateBool) servicesection @endif">
		  @foreach($relatedPrimaryPage as $rowKey=>$rowData)  
		  	<?php
			if( $rowData->category && $rowData->category->category_children_parent && $rowData->category->category_children_parent->category_parent ){				
				$route = route('PrimaryNavBarSubChild', ['page_slug' => $rowData->category->category_children_parent->category_parent->slug,'child_slug'=>$rowData->category->category_children_parent->slug,'sub_child_slug'=>$rowData->category->slug ]);
			}else if( $rowData->category && $rowData->category->category_children_parent ){
				$route = route('PrimaryNavBarChaild', ['page_slug' => $rowData->category->category_children_parent->slug,'child_slug'=>$rowData->category->slug ]);
			}else if( $rowData->category ){
				$route = route('PrimaryNavBar', ['page_slug' => $rowData->category->slug ]);
			}
			?>
            <div class="col-lg-4 col-md-6">
              <div class="cards cards-border card-bg-white">
                <div class="topSection">               
				 @if($rowData->image)
					<img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" class="img-fluid-height-w">
				@endif
                </div>
                <div class="card-bottom text-left card-set">
                  {!! $rowData->excerpt !!}
                </div>
                <div class="cards-footer">
                  <a class="vs_link" href="{{$route}}">{{$rowData->category['name']}}<span class="arrowSymbol float-right">&nbsp;►&nbsp;</span></a>
                </div>
              </div>
            </div>	
			@endforeach
          </div>
		  
        </div>
      </div>
    </section>
	@endif
	--}}
	@if(!$alternateBool)
		<?php $alternateBool = TRUE; ?>
	@endif
	@include('pages.primary-layout.blog-cards-other')
	
	@if(!$alternateBool)
		<?php $alternateBool = TRUE; ?>
	@endif
	
	
		
	{{-- careers --}}
	@if($dataRow->slug == "work-with-us")
	<section id="how-can-help" class="@if($alternateBool) servicesection @endif">
      <div class="container-fluid">
        <div class="container @if(!$alternateBool) mt-4 @endif">
          <div class="row @if($alternateBool) @endif">
		@if($careers && $careers->isNotEmpty())
			@foreach($careers as $rowKey=>$rowData)  
				<div class="col-lg-4 col-md-6">
				  <div class="cards cards-border card-bg-white">
					<div class="topSection cards-icon">
					  <div class="topics">
						<h3 class="mt-3 cards-color">{{$rowData->name}}</h3>
						<p class="">Experience:{{$rowData->email}}</p>
						<p class="">Location:{{$rowData->ip_address}}</p>
					  </div>
					</div>
					<div class="card-bottom text-left">{!! $rowData->message !!}</div>
					<div class="cards-footer">
					<a class="vs_link" href="{{route('career.details',['slug'=>$rowData->slug])}}">Click here <span class="arrowSymbol float-right">&nbsp;►&nbsp;</span></a>
					{{-- 
					@if(json_decode($rowData->document) !== null)
					@foreach(json_decode($rowData->document) as $file)
						<a href="{{ Storage::disk(config('voyager.storage.disk'))->url($file->download_link) ?: '' }}" target="_blank">
							{{ $file->original_name ?: '' }}
						</a>
						<br/>
					@endforeach
					@elseif($rowData->document)
					<a href="{{ Storage::disk(config('voyager.storage.disk'))->url($rowData->document) }}" target="_blank">
						Download
					</a>
					@endif
					--}}
					</div>
				  </div>
				</div>
			@endforeach
			@else
				<div class="col-lg-4 col-md-6">No vacancy available.</div>
			@endif
          </div>
        </div>
      </div>
    </section>
	@endif
	
	@if(!$alternateBool)
		<?php $alternateBool = TRUE; ?>
	@endif
	{{-- footerSubPages --}}
	@if($footerSubPages && $footerSubPages->isNotEmpty())
	<section id="how-can-help" class="@if($alternateBool) servicesection @endif">
      <div class="container-fluid">
        <div class="container @if(!$alternateBool) mt-4 @endif">
			<div class="row @if($alternateBool) @endif">
				<div class="col-lg-12 col-md-6">
					@include("pages.primary-layout.footerSubPages")
				</div>
			</div>
        </div>
      </div>
    </section>
	@endif
</main>
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

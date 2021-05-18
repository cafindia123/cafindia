@extends('master')
@section('content')

<main id="main">
	<section class="servicesection2">
	  <div class="container">
		<div class="row">
	  @if($dataRows->isNotEmpty())
		@foreach($dataRows as $rowKey=>$rowData)
			<?php 
				if( $rowData->category && $rowData->category->category_children_parent && $rowData->category->category_children_parent->category_parent ){
					$route = route('PrimaryNavBarSubChild', ['page_slug' => $rowData->category->category_children_parent->category_parent->slug,'child_slug'=>$rowData->category->category_children_parent->slug,'sub_child_slug'=>$rowData->category->slug ]);
				}else if( $rowData->category && $rowData->category->category_children_parent ){
					$route = route('PrimaryNavBarChaild', ['page_slug' => $rowData->category->category_children_parent->slug,'child_slug'=>$rowData->category->slug ]);
				}else if($rowData->category){
					$route = route('PrimaryNavBar', ['page_slug' => $rowData->category->slug ]);
				}
			?>
		  <div class="col-md-12">
			<h3 class="heading_c"><a href="{{ $route }}" class="play-btn mb-4" target="_blank">{{$rowData->title}}</a></h3>
			{{-- <h3 class="heading_c"><a  class="play-btn mb-4" target="_blank">{{$rowData->title}}</a></h3> --}}
			{!! $rowData->excerpt !!}
		  </div>
		  @endforeach
		@endif
		
	  @if($dataPostRows->isNotEmpty())
		@foreach($dataPostRows as $rowKey=>$rowData)
			<?php 
				if( $rowData->category && $rowData->category->category_parent && $rowData->category->category_parent->category_parent ){
					$route = route('footerNavBarSubChaild', ['category_slug' => $rowData->category->category_parent->slug,'child_slug'=>$rowData->category->slug,'sub_child_slug'=>$rowData->slug]);
				}else if( $rowData->category && $rowData->category->category_parent ){
					$route = route('footerNavBarChaild', ['category_slug' => $rowData->category->category_parent->slug,'child_slug'=>$rowData->category->slug ]);
				}
			?>
		  <div class="col-md-12">
			<h3 class="heading_c"><a href="{{ $route }}" class="play-btn mb-4" target="_blank">{{$rowData->title}}</a></h3>
			{{-- <h3 class="heading_c"><a  class="play-btn mb-4" target="_blank">{{$rowData->title}}</a></h3> --}}
			{!! $rowData->excerpt !!}
		  </div>
		  @endforeach
		@endif
		
		@if($dataRows->isEmpty() && $dataPostRows->isEmpty())
			<div class="col-md-12">
				<h2>No Records found</h2>
			</div>
		@endif
		</div>
	  </div>
	</section>
</main>
 @endsection
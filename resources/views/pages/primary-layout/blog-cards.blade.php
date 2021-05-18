@if($blogs && $blogs->isNotEmpty())
	<div class="row @if($alternateBool) @endif">
	@foreach($blogs as $rowKey=>$rowData)
		<div class="col-md-6">
			<div class="cards cards-border blog-card-bg-gray">
				@if($rowData->image)
				<div class="topSection topSectionImage" style="background-image: url({{ Voyager::image( $rowData->image )}});">
					{{-- <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" class="img-fluid-height-w" > --}}
				</div>
				@endif
				<div class="card-bottom text-left card-set blog-card-style mb-2" style="font-weight: bolder;">
					{!! $rowData->title !!}
					{{-- {{ mb_strlen( strip_tags($rowData->body) ) > 300 ? mb_substr(strip_tags($rowData->body), 0, 300) . ' ...' : strip_tags($rowData->body) }} --}}
				</div>
				<div class="cards-footer" >
				<a class="vs_link style-normal color-turquoise" href="{{route('blog.details',['slug'=>$rowData->slug])}}"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> Read More</a>
				</div>
			</div>
		</div>
	@endforeach
	@if($paginate)
		<div class="col-md-6">	{{ $blogs->links() }}</div>
	@endif
	</div>
@endif

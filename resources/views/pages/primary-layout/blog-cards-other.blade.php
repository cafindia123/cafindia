@if($blogs && $blogs->isNotEmpty())
	<div class="row @if($alternateBool) @endif">
	@foreach($blogs as $rowKey=>$rowData)
		<div class="col-md-4">
			<div class="cards cards-border blog-card-bg-gray">
				<div class="topSection">
				@if($rowData->image)
				<div class="topSection topSectionImage" style="background-image: url({{ Voyager::image( $rowData->image )}});">
					{{-- <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" class="img-fluid-height-w" > --}}
				</div>
					{{-- <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="{{ Voyager::image( $rowData->image )}}" class="img-fluid-height-w" > --}}
				@endif
				</div>
				<div class="card-bottom text-left card-set">
				{{ mb_strlen( strip_tags($rowData->body) ) > 300 ? mb_substr(strip_tags($rowData->body), 0, 300) . ' ...' : strip_tags($rowData->body) }}
				</div>
				<div class="cards-footer">
				<a class="vs_link" href="{{route('blog.details',['slug'=>$rowData->slug])}}"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> READ MORE</a>
				</div>
			</div>
		</div>
	@endforeach
	@if($paginate)
		<div class="col-md-4">	{{ $blogs->links() }}</div>
	@endif
	</div>
@endif

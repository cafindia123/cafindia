<div class="col-md-4" style="overflow: hidden !important">
	<div class="story clearfix">
		<div class="stheader">Related Materials</div>
		<div class="story-content pb-2">
			@foreach ($dataRow->featured_storys() as $item)
				<div class=" d-flex justify-content-between px-3 my-3">
					<div class="text-center mr-3">
						<img src="{{ asset('/assets/image/blog_related_material_icon.png') }}" width="60px" />
					</div>
					<div style="line-height: 17px;">
						<strong>BLOG:</strong>
						<a class="blog-link-text" href="{{route('blog.details',['slug'=>$item->slug])}}">
							{!! $item->title !!}
						</a>
					</div>
				</div>
			@endforeach
		</div>
	</div>
</div>
<style>
	.blog-link-text{
		font-size: 13px !important;
		font-family: 'Gotham-Light';
		padding: 0 !important;
	}
</style>
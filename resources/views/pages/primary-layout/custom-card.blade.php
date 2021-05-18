<div class="col-lg-{{12/$rowDataTop->columns_in_rows}} mb-3 col-md-6">
	<div class="cards h-100 card-bg text-white custom-card-style p-0 m-0">
		@if($rowData->image)
			<div class="custom-card-style-image" style="background-image: url({{ Voyager::image( $rowData->image )}})">

			</div>
			{{-- <img title="{{$rowData->title}}" alt="{{$rowData->title}}" src="" style="width:100%; "> --}}
		@endif
		<div class="card-img-overlay m-0 py-1 px-3 d-flex align-items-end">
			@if($rowData->link)
				<a href="{{ $rowData->link }}" target="_blank" title="{{$rowData->link_text}}">
					<h6 class="card-title m-0 p-0">{{ $rowData->title }}</h6>
				</a>
			@else
				<a href="{{ '/content-details/'.$mainSlug.'/'.$rowData->slug }}">
					<h6 class="card-title m-0 p-0">
						{{ $rowData->title }}
					</h6>
				</a>
			@endif
		</div>
	</div>
</div>

<style>
	.custom-card-style-image{
		width: 100%;
		height: 250px;
		background-size: cover;
		background-position: center;
	}
	.custom-card-style .card-img-overlay {
		height: 50%;
		background: linear-gradient(to top, rgba(0, 0, 0, 0.95), rgba(0, 0, 0, 0.00));
		top:auto;
	}
	.custom-card-style .card-img-overlay p{
		padding: 0px !important;
		margin: 0px !important;
	}
	.card-img-overlay a{
		position: relative;
		top: auto;
		left: auto;
		bottom: auto;
		color: white;
		width: 100%;
		overflow: hidden;
		text-overflow: ellipsis;
		height: 40px !important;
		/* display: -webkit-box; */
		/* -webkit-line-clamp: 2; number of lines to show */
		/* -webkit-box-orient: vertical; */
	}
	.card-img-overlay a:hover{
		color: var(--base-color);
	}
	.card-img-overlay p{
		font-size: 13px;
	}
</style>
<div class="row">
<div class="col-md-12">
	<div class="panel">
		<div class="panel-heading">
			<h3 class="panel-title page-title">Add Featured Story
				<div class="btn btn-success Add Featured Story">
					<i class="voyager-plus"></i> <a href="{{ route('voyager.featured-stories.create') }}" class="add Featured-nooo-page-sections" data-id="{{$dataTypeContent->id}}">Add Featured Story</a>
				</div>
			</h3>
			<div class="panel-actions">
				<a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
			</div>
		</div>
		<div class="panel-body">
			@php
			   $query = app('App\Models\FeaturedStory')::where("primary_page_id",$dataTypeContent->id)->orderBy("order","asc")->get();
				$dataTypeRows = $query;
			@endphp
			<div class="table-responsive">
			   <table id="dataTable" class="table table-hover">
				  <thead>
					 <tr>
						<th>Title</th>
						<th>Description</th>
						<th class="actions text-right dt-not-orderable">Actions</th>
					 </tr>
				  </thead>
				  <tbody>
				   @foreach($dataTypeRows as $row)
					 <tr>
						<td>{{$row->title}}</td>
						<td>{{$row->description}}</td>
<td class="no-sort no-click bread-actions">
<a href="{{ route('voyager.featured-stories.edit', $row->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit Featured-page-sections">
<i class="voyager-edit"></i><span class="hidden-xs hidden-sm">Edit</span>
</a>
<a href="{{ route('voyager.featured-stories.destroy', $row->id) }}" title="Delete" class="btn btn-sm btn-danger pull-right delete-page-section" data-id="{{$row->id}}" id="delete-{{$row->id}}">
<i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
</a>
							
						</td>
					 </tr>
				   @endforeach
				  </tbody>
			   </table>
			</div>
		</div>
	</div>
</div>
</div>
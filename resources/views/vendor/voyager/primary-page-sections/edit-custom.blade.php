<form class="modal-content" action="{{route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey())}}" id="install_form" method="POST" enctype="multipart/form-data">
	{{ method_field("PUT") }}
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span></button>
		<h4 class="modal-title"><i class="voyager-plus"></i>Edit Page Sections.</h4>
	</div>
	<div class="modal-body">
		<div class="form-group">
			<label for="template_type">Template Type</label>
			<select class="form-control select2" name="template_type" id="template_type1" required>
				<option value="CARDS" @if($dataTypeContent->template_type == "CARDS") selected @endif>CARDS</option>
				<option value="MEDIA" @if($dataTypeContent->template_type == "MEDIA") selected @endif>MEDIA</option>
				<option value="CUSTOM" @if($dataTypeContent->template_type == "CUSTOM") selected @endif>CUSTOM-CARDS</option>
				<option value="CUSTOM_LAYOUT" @if($dataTypeContent->template_type == "CUSTOM_LAYOUT") selected @endif>CUSTOM-LAYOUT</option>
			</select>
		</div>
		<div class="form-group">
			<label for="bg_style">Background Style</label>
			<select class="form-control select2" name="bg_style" id="bg_style" required>
				<option value="auto" @if($dataTypeContent->bg_style == "auto") selected @endif>AUTO</option>
				<option value="white" @if($dataTypeContent->bg_style == "white") selected @endif>WHITE</option>
				<option value="light" @if($dataTypeContent->bg_style == "light") selected @endif>LIGHT</option>
				<option value="dark" @if($dataTypeContent->bg_style == "dark") selected @endif>DARK</option>
			</select>
		</div>
		<div class="form-group">
			<label for="title">Title</label>
			<input type="text" value="{{$dataTypeContent->title}}" name="title" class="form-control" id="titled" placeholder="Title of hook">
		</div>
		<div class="form-group">
			<label class="control-label" for="description">Description</label>
			<textarea  class="form-control PageSectionsrichTextBox1" name="description" rows="5">{{$dataTypeContent->description}}</textarea>
		</div>
		<div class="form-group section-is_layout2">
			<label class="control-label" for="video_url">Video Link</label>
			<input  type="text" class="form-control" name="video_url" placeholder="Video Link" value="{{$dataTypeContent->video_url}}">
			<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
		</div>
		<div class="form-group section-is_layout2">
		@if(isset($dataTypeContent->image))
			<img src="{{ filter_var($dataTypeContent->image, FILTER_VALIDATE_URL) ? $dataTypeContent->image : Voyager::image( $dataTypeContent->image ) }}" style="width:100px" />
		@endif
		<br>
			<label class="control-label" for="image">Image</label>
			<input  type="file" name="image" accept="image/*">
		</div>
		<div class="form-group section-is_layout2">
			<label class="control-label" for="link">Link Url</label>
			<input  type="text" class="form-control" name="link" placeholder="Link Url" value="{{$dataTypeContent->link}}">
			<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
		</div>
		<div class="form-group section-is_layout2" >
			<label class="control-label" for="link_text">Link Title</label>
			<input  type="text" class="form-control" name="link_text" placeholder="Card Link Title1" value="{{$dataTypeContent->link_text}}">
		</div>
		<div class="form-group section-is_layout2">
			<label for="link_type">Link Type</label>
			<select class="form-control select2" name="link_type" id="link_type">
				<option value="BUTTON" @if($dataTypeContent->link_type == "BUTTON") selected @endif>Button</option>
				<option value="HYPERLINK" @if($dataTypeContent->link_type == "HYPERLINK") selected @endif>Hyperlink</option>
			</select>
		</div>
		<div class="form-group section-is_custom_layout2">
			<label class="control-label" for="link2">Second Link Url</label>
			<input  type="text" class="form-control" name="link2" placeholder="Link Url" value="{{$dataTypeContent->link2}}">
			<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
		</div>
		<div class="form-group section-is_custom_layout2" >
			<label class="control-label" for="link2_text">Second Link Title</label>
			<input  type="text" class="form-control" name="link2_text" placeholder="Card Link Title1" value="{{$dataTypeContent->link2_text}}">
		</div>
		<div class="form-group section-is_custom_layout2">
			<label for="link2_type">Second Link Type</label>
			<select class="form-control select2" name="link2_type" id="link2_type">
				<option value="BUTTON" @if($dataTypeContent->link2_type == "BUTTON") selected @endif>Button</option>
				<option value="HYPERLINK" @if($dataTypeContent->link2_type == "HYPERLINK") selected @endif>Hyperlink</option>
			</select>
		</div>
		<div class="form-group">
			<label class="control-label" for="name">Status</label>
			<select class="form-control select2" name="status">
				<option value="D" @if($dataTypeContent->status == "D") selected @endif>INACTIVE</option>
				<option value="A" @if($dataTypeContent->status == "A") selected @endif>ACTIVE</option>
			</select>
		</div>
		<div class="form-group section-is_layout22card">
			<label for="columns_in_rows">Grid options(Columns In Rows) </label>
			<select class="form-control select2" name="columns_in_rows" id="columns_in_rows">
				@foreach([2,3,4,6] as $x)
					<option value="{{$x}}" @if($dataTypeContent->columns_in_rows == $x) selected @endif>{{$x}}</option>
				@endforeach;
			</select>
		</div>
		<div class="form-group section-is_layout22custom">
			<label for="columns_in_rows1">Grid options(Columns In Rows) </label>
			<select class="form-control select2" name="columns_in_rows1" id="columns_in_rows1">
				@foreach([2,3,4,5,6,7] as $x)
					<option value="{{$x}}" @if($dataTypeContent->columns_in_rows == $x) selected @endif>{{$x}}</option>
				@endforeach;
			</select>
		</div>
	</div>
	<div class="modal-footer">
		{{ csrf_field() }}
		<input type="submit" class="btn btn-success pull-right install-confirm" value="Update">
		<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
	</div>
</form><!-- /.modal-content -->
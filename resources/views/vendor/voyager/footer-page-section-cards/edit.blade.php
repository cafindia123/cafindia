<form class="modal-content" action="{{route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey())}}" id="install_form" method="POST" enctype="multipart/form-data">{{ method_field("PUT") }}
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
					aria-hidden="true">&times;</span></button>
		<h4 class="modal-title"><i class="voyager-plus"></i>Edit Page Sections Card.</h4>
	</div>
	<div class="modal-body">
		<div class="form-group" id="template-type-card">
			<label for="image_icon">Image/Icon</label>
			<select class="form-control select2" name="image_icon" id="image_icon" required>
				<option value="1" @if($dataTypeContent->image_icon == "1") selected @endif>Is Image</option>
				<option value="2" @if($dataTypeContent->image_icon == "2") selected @endif>Is Icon</option>
				<option value="3" @if($dataTypeContent->image_icon == "3") selected @endif>Without Image/Icon</option>
			</select>
		</div> 
        <div class="row"  id="template-type-custom">
			<div class="col-md-12" style="margin-bottom: 5px;">
				<label for="layout_template">Template Type</label>
			</div>
            <input type="hidden" name="layout_template" id="layout_template1" value="{{$dataTypeContent->layout_template}}" />
            <div class="col-md-6" >
                <div class="card @if($dataTypeContent->layout_template == 1) active @endif" data-layout_template="1">
                    <img class="card-img-top" src="{{ asset('/assets/img/layout_type1.jpg') }}" width="100%" alt="">
                </div>
            </div>
            <div class="col-md-6">
                <div class="card @if($dataTypeContent->layout_template == 2) active @endif" data-layout_template="2">
                    <img class="card-img-top" src="{{ asset('/assets/img/layout_type2.jpg') }}" width="100%" alt="">
                </div>
            </div>
        </div>
		<div class="form-group">
			<label for="title">Title</label>
			<input type="text" name="title" class="form-control" id="titledd" placeholder="Title" value="{{$dataTypeContent->title}}">
		</div>
		<div class="form-group">
			<label for="slug"></label>
			<input type="text" name="slug" class="form-control" id="slugdddd"
			{!! isFieldSlugAutoGenerator($dataType, $dataTypeContent, "slug") !!}
			value="{{ $dataTypeContent->slug }}"
			placeholder="Slug">
		</div>
		<div class="form-group">
			<label class="control-label" for="description">Description</label>
			<textarea  class="form-control PageSectionsrichTextBox1" name="description" rows="5">{{$dataTypeContent->description}}</textarea>
		</div>
		<div class="form-group section-is_layout22">
		@if(isset($dataTypeContent->image))
			<img src="{{ filter_var($dataTypeContent->image, FILTER_VALIDATE_URL) ? $dataTypeContent->image : Voyager::image( $dataTypeContent->image ) }}" style="width:100px" />
		@endif<br>
			<label class="control-label" for="image">Image</label>
			<input  type="file" name="image" accept="image/*">
		</div>
		<div class="form-group section-is_layout22">
			<label class="control-label" for="link">Link Url</label>
			<input  type="text" class="form-control" name="link" placeholder="Link Url" value="{{$dataTypeContent->link}}">
			<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
		</div>
		<div class="form-group section-is_layout22" >
			<label class="control-label" for="link_text">Link Title</label>
			<input  type="text" class="form-control" name="link_text" placeholder="Card Link Title1" value="{{$dataTypeContent->link_text}}">
		</div>
		<div class="form-group section-is_layout22">
			<label for="link_type">Link Type</label>
			<select class="form-control select2" name="link_type" id="link_type">
				<option value="BUTTON" @if($dataTypeContent->link_type == "BUTTON") selected @endif>Button</option>
				<option value="HYPERLINK" @if($dataTypeContent->link_type == "HYPERLINK") selected @endif>Hyperlink</option>
			</select>
		</div>
		<div class="form-group">
			<label class="control-label" for="name">Status</label>
			<select class="form-control select2" name="status">
				<option value="D" @if($dataTypeContent->status == "D") selected @endif>INACTIVE</option>
				<option value="A" @if($dataTypeContent->status == "A") selected @endif>ACTIVE</option>
			</select>
		</div>
	</div>
	<div class="modal-footer">
		{{ csrf_field() }}
		<input type="submit" class="btn btn-success pull-right install-confirm" value="Save">
		<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
	</div>
</form><!-- /.modal-content -->
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
				<option value="CUSTOM" @if($dataTypeContent->template_type == "CUSTOM") selected @endif>CUSTOM</option>
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

        <div class="row" id="custom_layout_style1">
			<div class="col-md-12" style="margin-bottom: 5px;">
				<label for="template_type">Template Type</label>
			</div>
            <input type="hidden" name="layout_style" id="layout_style1" value="{{$dataTypeContent->layout_style}}" />
            <div class="col-md-4" >
                <div class="card @if($dataTypeContent->layout_style == 1) active @endif" data-layout="1">
                    <img class="card-img-top" src="{{ asset('/assets/img/layout_type1.png') }}" width="100%" alt="">
                </div>
            </div>
            <div class="col-md-4">
                <div class="card @if($dataTypeContent->layout_style == 2) active @endif" data-layout="2">
                    <img class="card-img-top" src="{{ asset('/assets/img/layout_type2.png') }}" width="100%" alt="">
                </div>
            </div>
            <div class="col-md-4">
                <div class="card @if($dataTypeContent->layout_style == 3) active @endif" data-layout="3">
                    <img class="card-img-top" src="{{ asset('/assets/img/layout_type3.png') }}" width="100%" alt="">
                </div>
            </div>
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
	</div>
	<div class="modal-footer">
		{{ csrf_field() }}
		<input type="submit" class="btn btn-success pull-right install-confirm" value="Update">
		<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
	</div>
</form><!-- /.modal-content -->
<style>

#custom_layout_style1 .card{
    box-shadow: rgba(0, 0, 0, 0.4) 0 0 2px;
    transition: .3s;
}
#custom_layout_style1 .card:hover{
    box-shadow: rgba(0, 0, 0, 0.4) 0 0 8px;
}
#custom_layout_style1 .card.active{
    box-shadow: rgba(41, 90, 187, 0.741) 0 0 15px;
}
</style>

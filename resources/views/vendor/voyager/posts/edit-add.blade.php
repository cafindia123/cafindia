@php
    $edit = !is_null($dataTypeContent->getKey());
    $add  = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
<style>
    @media only screen and (max-width: 700px){
        table.fold-table {
            width: 230px;
        }
    }
    table.fold-table {
        width: 100%;
    }
    table.fold-table thead.cfdsd {
        cursor:pointer;background: #71767f;
        color: #fff;max-width: 400px;
        color: #fff;max-width: 400px;
    }
    table.fold-table thead.open {
        background: tomato;
        color: white;
    }

    thead.cfdsd tr td.last{
    position: relative;
    }

    th.panel-title {
        position: relative;
    }
    th.panel-title::after {
        content: "\E038";
        color: #fff;
        font-size:18px;
        font-family: "Voyager";
        -ms-transform: rotate(0deg);
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
        transition: .5s;
        position: absolute;
        bottom: 7px;
        right: 5px;
    }

    th.panel-title.arrow::after {
        -ms-transform: rotate(180deg);
        -webkit-transform: rotate(180deg);
        transform: rotate(180deg);
        transition: .5s;
    }

        .panel .mce-panel {
            border-left-color: #fff;
            border-right-color: #fff;
    }

    .panel .mce-toolbar,
    .panel .mce-statusbar {
        padding-left: 20px;
    }

    .panel .mce-edit-area,
    .panel .mce-edit-area iframe,
    .panel .mce-edit-area iframe html {
        padding: 0 10px;
        min-height: 350px;
    }

    .mce-content-body {
        color: #555;
        font-size: 14px;
    }

    .panel.is-fullscreen .mce-statusbar {
        position: absolute;
        bottom: 0;
        width: 100%;
        z-index: 200000;
    }

    .panel.is-fullscreen .mce-tinymce {
        height:100%;
    }

    .panel.is-fullscreen .mce-edit-area,
    .panel.is-fullscreen .mce-edit-area iframe,
    .panel.is-fullscreen .mce-edit-area iframe html {
        height: 100%;
        position: absolute;
        width: 99%;
        overflow-y: scroll;
        overflow-x: hidden;
        min-height: 100%;
    }
    .modal {
        z-index: 9999;
    }.modal-backdrop {
        z-index: 999;
    }
    #custom_layout_style .card, #custom_template_type .card{
        box-shadow: rgba(0, 0, 0, 0.4) 0 0 2px;
        transition: .3s;
    }
    #custom_layout_style .card:hover, #custom_template_type .card:hover{
        box-shadow: rgba(0, 0, 0, 0.4) 0 0 8px;
    }
    #custom_layout_style .card.active, #custom_template_type .card.active{
        box-shadow: rgba(41, 90, 187, 0.741) 0 0 15px;
    }
</style>
@stop

@section('page_title', __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form" action="@if($edit){{ route('voyager.posts.update', $dataTypeContent->id) }}@else{{ route('voyager.posts.store') }}@endif" method="POST" enctype="multipart/form-data">
            <!-- PUT Method if we are editing -->
            @if($edit)
                {{ method_field("PUT") }}
            @endif
            {{ csrf_field() }}

            <div class="row">
                <div class="col-md-8">
                    <!-- ### TITLE ### -->
                    <div class="panel">
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="voyager-character"></i> {{ __('voyager::post.title') }}
                                <span class="panel-desc"> {{ __('voyager::post.title_sub') }}</span>
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                           <?php
							$query = app('App\Models\Category')::with("category_children_parent");
						   ?>
							@if($edit)
								<?php
									$queryResult = $query->where("id" , $dataTypeContent->category_id)->first();

										$route = "";
											if( $queryResult->category_children_parent && $queryResult->category_children_parent->category_parent && $queryResult->category_children_parent->category_parent->category_parent ){
												$route = $queryResult->category_children_parent->category_parent->category_parent->name." -> ".$queryResult->category_children_parent->category_parent->name." -> ".$queryResult->category_children_parent->name." -> ";
											}else if( $queryResult->category_children_parent && $queryResult->category_children_parent->category_parent ){
												$route = $queryResult->category_children_parent->category_parent->name." -> ".$queryResult->category_children_parent->name." -> ";
											}else if( $queryResult->category_parent ){
												$route = $queryResult->category_parent->name." -> ";
											}
										?>
							<div class="form-group">
                               <h4 class=""> <label for="category_id">Footer Pages</label> </h4>
								<input type="text" class="form-control" id="title"   value="{{$route}}{{$queryResult->name}}" readonly>
								<input name="category_id" value="{{$dataTypeContent->category_id}}" type="hidden">
								</div>
							@else
                            <div class="form-group">
                               <h4 class=""> <label for="category_id">Footer Pages</label> </h4>
								<?php //whereNotIn("slug",FOOTER_NAVIGATION_PARENT)->
								$query->whereNotExists(function ($query) {
												$query->select(\DB::raw(1))
												  ->from('posts')
												  ->whereRaw('posts.category_id = categories.id');
												});
								?>
                                <select class="form-control select2" name="category_id">
									<option value="">Please Select Main Footer Page</option>
                                    @foreach($query->get() as $rowData)
										<?php
										$route = "";
											if( $rowData->category_children_parent && $rowData->category_children_parent->category_parent && $rowData->category_children_parent->category_parent->category_parent ){
												$route = $rowData->category_children_parent->category_parent->category_parent->name." -> ".$rowData->category_children_parent->category_parent->name." -> ".$rowData->category_children_parent->name." -> ";
											}else if( $rowData->category_children_parent && $rowData->category_children_parent->category_parent ){
												$route = $rowData->category_children_parent->category_parent->name." -> ".$rowData->category_children_parent->name." -> ";
											}else if( $rowData->category_parent ){
												$route = $rowData->category_parent->name." -> ";
											}
										?>
										<option value="{{ $rowData->id }}"@if(isset($dataTypeContent->category_id) && $dataTypeContent->category_id == $rowData->id) selected="selected"@endif>{{$route}}{{ $rowData->name }}</option>
                                    @endforeach
                                </select>

                            </div>
							@endif
                             <div class="form-group">
							 <h4 class=""> <label for="title">{{ __('voyager::generic.title') }}</label> </h4>
                            @include('voyager::multilingual.input-hidden', [
                                '_field_name'  => 'title',
                                '_field_trans' => get_field_translations($dataTypeContent, 'title')
                            ])
                            <input type="text" class="form-control" id="title" name="title" placeholder="{{ __('voyager::generic.title') }}" value="{{ $dataTypeContent->title ?? '' }}">
							</div>
                        </div>
                    </div>

                    <!-- ### CONTENT ### -->
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{ __('voyager::post.content') }}</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-resize-full" data-toggle="panel-fullscreen" aria-hidden="true"></a>
                            </div>
                        </div>

                        <div class="panel-body">
                            @include('voyager::multilingual.input-hidden', [
                                '_field_name'  => 'body',
                                '_field_trans' => get_field_translations($dataTypeContent, 'body')
                            ])
                            @php
                                $dataTypeRows = $dataType->{($edit ? 'editRows' : 'addRows' )};
                                $row = $dataTypeRows->where('field', 'body')->first();
                            @endphp
                            {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                        </div>
                    </div><!-- .panel -->

                    <!-- ### EXCERPT ### -->
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">{!! __('voyager::post.excerpt') !!}</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            @include('voyager::multilingual.input-hidden', [
                                '_field_name'  => 'excerpt',
                                '_field_trans' => get_field_translations($dataTypeContent, 'excerpt')
                            ])
							@php
                                $dataTypeRows = $dataType->{($edit ? 'editRows' : 'addRows' )};
                                $row = $dataTypeRows->where('field', 'excerpt')->first();
                            @endphp
                            {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
								{{--<textarea class="form-control richTextBox" name="excerpt">{{ $dataTypeContent->excerpt ?? '' }}</textarea>--}}
                        </div>
                    </div>

                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{ __('voyager::post.additional_fields') }}</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            @php
                                $dataTypeRows = $dataType->{($edit ? 'editRows' : 'addRows' )};
                                $exclude = ['title', 'body', 'excerpt', 'slug', 'status', 'category_id', 'author_id', 'featured', 'image', 'meta_description', 'meta_keywords', 'seo_title'];
                            @endphp

                            @foreach($dataTypeRows as $row)
                                @if(!in_array($row->field, $exclude))
                                    @php
                                        $display_options = $row->details->display ?? NULL;
                                    @endphp
                                    @if (isset($row->details->formfields_custom))
                                        @include('voyager::formfields.custom.' . $row->details->formfields_custom)
                                    @else
                                        <div class="form-group @if($row->type == 'hidden') hidden @endif @if(isset($display_options->width)){{ 'col-md-' . $display_options->width }}@endif" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                            {{ $row->slugify }}
                                            <label for="name">{{ $row->getTranslatedAttribute('display_name') }}</label>
                                            @include('voyager::multilingual.input-hidden-bread-edit-add')
                                            @if($row->type == 'relationship')
                                                @include('voyager::formfields.relationship', ['options' => $row->details])
                                            @else
                                                {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                            @endif

                                            @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                                {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                            @endforeach
                                        </div>
                                    @endif
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- ### DETAILS ### -->
                    <div class="panel panel panel-bordered panel-warning">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-clipboard"></i> {{ __('voyager::post.details') }}</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="slug">{{ __('voyager::post.slug') }}</label>
                                @include('voyager::multilingual.input-hidden', [
                                    '_field_name'  => 'slug',
                                    '_field_trans' => get_field_translations($dataTypeContent, 'slug')
                                ])
                                <input type="text" class="form-control" id="slug" name="slug"
                                    placeholder="slug"
                                    {!! isFieldSlugAutoGenerator($dataType, $dataTypeContent, "slug") !!}
                                    value="{{ $dataTypeContent->slug ?? '' }}">
                            </div>
                            <div class="form-group">
                                <label for="status">{{ __('voyager::post.status') }}</label>
                                <select class="form-control" name="status">
                                    <option value="PUBLISHED"@if(isset($dataTypeContent->status) && $dataTypeContent->status == 'PUBLISHED') selected="selected"@endif>{{ __('voyager::post.status_published') }}</option>
                                    <option value="DRAFT"@if(isset($dataTypeContent->status) && $dataTypeContent->status == 'DRAFT') selected="selected"@endif>{{ __('voyager::post.status_draft') }}</option>
                                    <option value="PENDING"@if(isset($dataTypeContent->status) && $dataTypeContent->status == 'PENDING') selected="selected"@endif>{{ __('voyager::post.status_pending') }}</option>
                                </select>
                            </div>
							@if($edit)
								<input name="category_id" value="{{$dataTypeContent->category_id}}" type="hidden">
							@endif
                            <div class="form-group">
                                <label for="featured">{{ __('voyager::generic.featured') }}</label>
                                <input type="checkbox" name="featured"@if(isset($dataTypeContent->featured) && $dataTypeContent->featured) checked="checked"@endif>
                            </div>
                        </div>
                    </div>

                    <!-- ### IMAGE ### -->
                    <div class="panel panel-bordered panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-image"></i> {{ __('voyager::post.image') }}</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            @if(isset($dataTypeContent->image))
                                <img src="{{ filter_var($dataTypeContent->image, FILTER_VALIDATE_URL) ? $dataTypeContent->image : Voyager::image( $dataTypeContent->image ) }}" style="width:100%" />
                            @endif
                            <input type="file" name="image">
                        </div>
                    </div>

                    <!-- ### SEO CONTENT ### -->
                    <div class="panel panel-bordered panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-search"></i> {{ __('voyager::post.seo_content') }}</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="meta_description">{{ __('voyager::post.meta_description') }}</label>
                                @include('voyager::multilingual.input-hidden', [
                                    '_field_name'  => 'meta_description',
                                    '_field_trans' => get_field_translations($dataTypeContent, 'meta_description')
                                ])
                                <textarea class="form-control" name="meta_description">{{ $dataTypeContent->meta_description ?? '' }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="meta_keywords">{{ __('voyager::post.meta_keywords') }}</label>
                                @include('voyager::multilingual.input-hidden', [
                                    '_field_name'  => 'meta_keywords',
                                    '_field_trans' => get_field_translations($dataTypeContent, 'meta_keywords')
                                ])
                                <textarea class="form-control" name="meta_keywords">{{ $dataTypeContent->meta_keywords ?? '' }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="seo_title">{{ __('voyager::post.seo_title') }}</label>
                                @include('voyager::multilingual.input-hidden', [
                                    '_field_name'  => 'seo_title',
                                    '_field_trans' => get_field_translations($dataTypeContent, 'seo_title')
                                ])
                                <input type="text" class="form-control" name="seo_title" placeholder="SEO Title" value="{{ $dataTypeContent->seo_title ?? '' }}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!---------------------------------------------------------------->
@if($edit)
            <div class="row">
				<div class="col-md-12">
					<div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title page-title">Additional Content
								<div class="btn btn-success install">
									<i class="voyager-plus"></i> Add Page Sections
								</div>
				<a href="{{ route('voyager.footer-page-sections.order',['footer_page_id'=>$dataTypeContent->id] ) }}" class="btn btn-primary btn-order-new" style="margin-left: 24px;">
                    <i class="voyager-list"></i> <span>{{ __('voyager::bread.order') }}</span>
                </a>
							</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            @php
                               $query = app('App\Models\FooterPageSection')::with("card_children")->where("footer_page_id",$dataTypeContent->id)->orderBy("order","asc")->get();
								$dataTypeRows = $query;
                            @endphp
							<div class="table-responsive">
							   <table id="dataTable" class="table table-hover">
								  <thead>
									 <tr>
										<th>Title</th>
										<th>Template Type</th>
										<th class="actions text-right dt-not-orderable">Actions</th>
									 </tr>
								  </thead>
								  <tbody>
								   @foreach($dataTypeRows as $row)
									 <tr>
										<td>{{$row->title}}</td>
<td>{{$row->template_type}}
@if($row->card_children->isNotEmpty())
<div class="table-responsive">
<table class="fold-table table table-hover">
    <thead class="cfdsd" id="eachDeliveryMens_{{$row->id}}___{{$row->id}}" data-id="{{$row->id}}___{{$row->id}}">
    <tr>
        <th>Title </th>
        <th>Description </th>
        <th>Image</th>
        <th>Created At</th>
        <th>Actions</th>
    </tr>
</thead>
 <tbody id="showhide_{{$row->id}}___{{$row->id}}" style="background: rgb(234, 234, 234); display: none;">
    @foreach($row->card_children as $card_row)
	<tr>
        <td data-title="Title">{{$card_row->title}}</td>
        <td data-title="description">{!! $card_row->description !!}</td>
        <td data-title="">@if($card_row->image)
			<img title="{{$card_row->title}}" alt="{{$card_row->title}}" src="{{ Voyager::image( $card_row->image )}}" style="width:100PX">@endif</td>
        <td>{{$card_row->created_at}}</td>
        <td><a href="{{ route('voyager.footer-page-section-cards.edit', $card_row->id) }}" data-template_type="{{$row->template_type}}" title="Edit" class="btn btn-sm btn-primary pull-right edit footer-page-section-cards">
		<i class="voyager-edit"></i><span class="hidden-xs hidden-sm">Edit</span>
		<a href="{{ route('voyager.footer-page-section-cards.destroy', $card_row->id) }}" title="Delete" class="btn btn-sm btn-danger pull-right delete-page-section" data-id="{{$card_row->id}}" id="delete-{{$card_row->id}}">
            <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
        </a>
	</a></td>
    </tr>
	@endforeach
</tbody>
</table>
</div>
@endif
</td>
										<td class="no-sort no-click bread-actions">
	<a href="{{ route('voyager.footer-page-sections.edit', $row->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit footer-page-sections">
		<i class="voyager-edit"></i><span class="hidden-xs hidden-sm">Edit</span>
	</a>
	<a href="{{ route('voyager.footer-page-sections.destroy', $row->id) }}" title="Delete" class="btn btn-sm btn-danger pull-right delete-page-section" data-id="{{$row->id}}" id="delete-{{$row->id}}">
            <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
        </a>
											@if($row->template_type == "CARDS")

												<div title="View" class="btn btn-sm btn-warning view install_card" data-id="{{$row->id}}">
													<i class="voyager-plus"></i> Add Page Sections Card
												</div>
											@elseif($row->template_type == "CUSTOM")

												<div title="View" class="btn btn-sm btn-warning view install_custom_card" data-id="{{$row->id}}">
													<i class="voyager-plus"></i> Add Page Custom Card
												</div>
											@endif
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
			@endif
<!---------------------------------------------------------------->
            @section('submit-buttons')
                <button type="submit" class="btn btn-primary pull-right">
                     @if($edit){{ __('voyager::post.update') }}@else <i class="icon wb-plus-circle"></i> {{ __('voyager::post.new') }} @endif
                </button>
            @stop
            @yield('submit-buttons')
        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
            <input name="image" id="upload_file" type="file"
                     onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
            {{ csrf_field() }}
        </form>
    </div>

    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}</h4>
                </div>

                <div class="modal-body">
                    <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                    <button type="button" class="btn btn-danger" id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Delete File Modal -->


    <!-- End Delete File Modal-------------------------------------------------- -->

	<div class="modal modal-success fade" tabindex="-1" id="install_modal" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <form class="modal-content" action="{{route('footer-page-sections.store')}}" id="install_form" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="footer_page_id" value="{{$dataTypeContent->id}}">
                <input type="hidden" name="status" value="A">
				<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-plus"></i>Add Page Sections.</h4>
                </div>
                <div class="modal-body">
					<div class="form-group">
						<label for="template_type">Template Type</label>
						<select class="form-control select2 " name="template_type" id="template_type" required>
							<option value="CARDS">CARDS</option>
							<option value="MEDIA">MEDIA</option>
							<option value="CUSTOM">CUSTOM</option>
						</select>
					</div>
                    <div class="row" id="custom_layout_style">
                        <div class="col-md-12" style="margin-bottom: 5px;">Style</div>
                        <input type="hidden" name="layout_style" id="layout_style" value="1" />
                        <div class="col-md-4" >
                            <div class="card active" data-layout="1">
                                <img class="card-img-top" src="{{ asset('/assets/img/layout_type1.png') }}" width="100%" alt="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card" data-layout="2">
                                <img class="card-img-top" src="{{ asset('/assets/img/layout_type2.png') }}" width="100%" alt="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card" data-layout="3">
                                <img class="card-img-top" src="{{ asset('/assets/img/layout_type3.png') }}" width="100%" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" name="title" class="form-control" id="titled" placeholder="Title">
                    </div>
					<div class="form-group">
						<label class="control-label" for="description">Description</label>
						<textarea class="form-control PageSectionsrichTextBox" name="description" rows="5" id="descriptionPostPageSections"></textarea>
					</div>
					<div class="form-group section-is_layout2">
						<label class="control-label" for="video_url">Video Link</label>
						<input  type="text" class="form-control" name="video_url" placeholder="Video Link" value="">
						<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
					</div>
					<div class="form-group section-is_layout2">
						<label class="control-label" for="image">Image</label>
						<input  type="file" name="image" accept="image/*">
					</div>
					<div class="form-group section-is_layout2">
						<label class="control-label" for="link">Link Url</label>
						<input  type="text" class="form-control" name="link" placeholder="Link Url" value="">
						<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
					</div>
					<div class="form-group section-is_layout2" >
						<label class="control-label" for="link_text">Link Title</label>
						<input  type="text" class="form-control" name="link_text" placeholder="Card Link Title1" value="">
					</div>
					<div class="form-group section-is_layout2">
						<label for="link_type">Link Type</label>
						<select class="form-control select2" name="link_type" id="link_type">
							<option value="BUTTON">Button</option>
							<option value="HYPERLINK">Hyperlink</option>
						</select>
					</div>
					<div class="form-group section-is_layout22card">
						<label for="columns_in_rows">Grid options(Columns In Rows) </label>
                        <select class="form-control select2" name="columns_in_rows" id="columns_in_rows">
                            @foreach([2,3,4,6] as $x)
                                <option value="{{$x}}">{{$x}}</option>
                            @endforeach;
                        </select>
					</div>
                </div>
                <div class="modal-footer">
					{{ csrf_field() }}
					<input type="submit" class="btn btn-success pull-right install-confirm" value="Create New">
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
                </div>
            </form><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

	<div class="modal modal-success fade" tabindex="-1" id="install_modal_card" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <form class="modal-content" action="{{route('footer-page-sections.store-cards')}}" id="install_form" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="footer_page_section_id" id="footer_page_section_id">
                <input type="hidden" name="status" value="A">
				<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-plus"></i>Add Page Sections Card.</h4>
                </div>
                <div class="modal-body">
					<div class="form-group">
						<label for="image_icon">Image/Icon</label>
						<select class="form-control select2" name="image_icon" id="image_icon" required>
							<option value="1">Is Image</option>
							<option value="2">Is Icon</option>
							<option value="3">Without Image/Icon</option>
						</select>
					</div>
                    
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" name="title" class="form-control" id="titledd" placeholder="Title" >
                    </div>
                    <div class="form-group">
                        <label for="slug">Slug</label>
                        <input type="text" name="slug" class="form-control" id="slugdd"
                        {!! isFieldSlugAutoGenerator($dataType, $dataTypeContent, "slug") !!}
                        placeholder="Slug" >
                    </div>
					<div class="form-group">
						<label class="control-label" for="description">Description</label>
						<textarea  class="form-control PageSectionsrichTextBox" name="description" rows="5" id="descriptionPostPageSectionsCard"></textarea>
					</div>
					<div class="form-group section-is_layout22">
						<label class="control-label" for="image">Image</label>
						<input  type="file" name="image" accept="image/*">
					</div>
					<div class="form-group section-is_layout22">
						<label class="control-label" for="link">Link Url</label>
						<input  type="text" class="form-control" name="link" placeholder="Link Url" value="">
						<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
					</div>
					<div class="form-group section-is_layout22" >
						<label class="control-label" for="link_text">Link Title</label>
						<input  type="text" class="form-control" name="link_text" placeholder="Card Link Title1" value="">
					</div>
					<div class="form-group section-is_layout22">
						<label for="link_type">Link Type</label>
						<select class="form-control select2" name="link_type" id="link_type">
							<option value="BUTTON">Button</option>
							<option value="HYPERLINK">Hyperlink</option>
						</select>
					</div>
                </div>
                <div class="modal-footer">
					{{ csrf_field() }}
					<input type="submit" class="btn btn-success pull-right install-confirm" value="Create New">
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
                </div>
            </form><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

	<div class="modal modal-success fade" tabindex="-1" id="install_modal_custom_card" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <form class="modal-content" action="{{route('footer-page-sections.store-cards')}}" id="install_form" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="footer_page_section_id" id="footer_page_custom_section_id">
                <input type="hidden" name="status" value="A">
				<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-plus"></i>Add Page Sections Custom.</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="custom_template_type">
                        <div class="col-md-12" style="margin-bottom: 5px;">
                            <label for="layout_template">Detail Page Style</label>
                        </div>
                        <input type="hidden" name="layout_template" id="layout_template" value="{{$dataTypeContent->layout_template}}" />
                        <div class="col-md-6" >
                            <div class="card active" data-layout_template="1">
                                <img class="card-img-top" src="{{ asset('/assets/img/layout_type1.jpg') }}" width="100%" alt="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card" data-layout_template="2">
                                <img class="card-img-top" src="{{ asset('/assets/img/layout_type2.jpg') }}" width="100%" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" name="title" class="form-control" id="titledd" placeholder="Title" >
                    </div>
                    <div class="form-group">
                        <label for="slug">Slug</label>
                        <input type="text" name="slug" class="form-control" id="slugddd"
                        {!! isFieldSlugAutoGenerator($dataType, $dataTypeContent, "slug") !!}
                        placeholder="Slug" >
                    </div>
					<div class="form-group">
						<label class="control-label" for="description">Description</label>
						<textarea  class="form-control PageSectionsrichTextBox" name="description" rows="5" id="descriptionPostPageSectionsCard1"></textarea>
					</div>
					<div class="form-group section-is_layout22">
						<label class="control-label" for="image">Image</label>
						<input  type="file" name="image" accept="image/*">
					</div>
					<div class="form-group section-is_layout22">
						<label class="control-label" for="link">Link Url</label>
						<input  type="text" class="form-control" name="link" placeholder="Link Url" value="">
						<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
					</div>
					<div class="form-group section-is_layout22" >
						<label class="control-label" for="link_text">Link Title</label>
						<input  type="text" class="form-control" name="link_text" placeholder="Card Link Title1" value="">
					</div>
					<div class="form-group section-is_layout22">
						<label for="link_type">Link Type</label>
						<select class="form-control select2" name="link_type" id="link_type">
							<option value="BUTTON">Button</option>
							<option value="HYPERLINK">Hyperlink</option>
						</select>
					</div>
                </div>
                <div class="modal-footer">
					{{ csrf_field() }}
					<input type="submit" class="btn btn-success pull-right install-confirm" value="Create New">
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
                </div>
            </form><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->


    {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager::generic.delete_question') }} ?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="delete_form" method="POST">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm" value="{{ __('voyager::generic.delete_confirm') }}">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

	<div class="modal modal-success fade" tabindex="-1" id="edit_modal" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
		</div>
	</div>
@stop

@section('javascript')
    <script>


$('document').ready(function () {
    $('#slugdd').slugify();
    $('#slugddd').slugify();
$(document).on('click','.footer-page-sections', function(e){
	e.preventDefault();
	$form = $(this);
	$.ajax({
		url : $form.attr('href'),
		type : "GET",
		dataType:'html',
		success : function(data) {
			$("#edit_modal .modal-dialog").html(data);
			$("#edit_modal").modal("show"); 
            $('#slugdddd').slugify();
            $("#custom_layout_style1 .card").on('click', function(e){
                $("#custom_layout_style1 .card").removeClass('active');
                $(this).addClass('active');
                $("#layout_style1").val($(this).data('layout'));
                
                $(".form-group.section-is_layout22card").hide();
                if($(this).data('layout') == 2)
                    $(".form-group.section-is_layout22card").show();
            });

			if( $('select#template_type1.form-control.select2').val() == "MEDIA" ){
				$(".form-group.section-is_layout2").show();
				$(".form-group.section-is_layout22card").hide();
		        $("#custom_layout_style1").hide();
			 }else if( $('select#template_type1.form-control.select2').val() == "CUSTOM" ){
				$(".form-group.section-is_layout2").hide();
				$(".form-group.section-is_layout22card").show();
		        $("#custom_layout_style1").show();
            } else {
                $(".form-group.section-is_layout2").hide();
				$(".form-group.section-is_layout22card").show();
		        $("#custom_layout_style1").hide();
			 }
			 $('select#template_type1.form-control.select2').change( function(){
				 $thisPrivent = $(this);
				 if( $thisPrivent.val() == "MEDIA" ){
					$(".form-group.section-is_layout2").show();
					$(".form-group.section-is_layout22card").hide();
		            $("#custom_layout_style1").hide();
				 }else if( $thisPrivent.val() == "CUSTOM" ){
					$(".form-group.section-is_layout2").hide();
					$(".form-group.section-is_layout22card").hide();
		            $("#custom_layout_style1").show();
				 }else{
					$(".form-group.section-is_layout2").hide();
					$(".form-group.section-is_layout22card").show();
		            $("#custom_layout_style1").hide();
				 }
			 });  $(document).ready(function() {
            var additionalConfig = {
                selector: 'textarea.PageSectionsrichTextBox1',
            }

            $.extend(additionalConfig, {!! json_encode('{}') !!})

            tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));

        });
		}
	});
});
$(document).on('click','.footer-page-section-cards', function(e){
	e.preventDefault();
    var templateType = $(this).data('template_type');
	$form = $(this);
	$.ajax({
		url : $form.attr('href'),
		type : "GET",
		dataType:'html',
		success : function(data) { 
			$("#edit_modal .modal-dialog").html(data);

            if(templateType == "CARDS") {
                $('#template-type-card').show();
                $('#template-type-custom').hide();
            } else {
                $('#template-type-card').hide();
                $('#template-type-custom').show();                
            }
			$("#edit_modal").modal("show");  
            $(document).ready(function() {
                $('#slugdddd').slugify();
                var additionalConfig = {
                    selector: 'textarea.PageSectionsrichTextBox1',
                }

                $.extend(additionalConfig, {!! json_encode('{}') !!})

                tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));

            });
		}
	});
});
$(document).on('click','.btn-order-new', function(e){
	e.preventDefault();
	$form = $(this);
	$.ajax({
		url : $form.attr('href'),
		type : "GET",
		dataType:'html',
		success : function(data) {
			$("#edit_modal .modal-dialog").html(data);
			$("#edit_modal").modal("show");
		}
	});
});


$(document).on('click','[id^=eachDeliveryMens_]', function(e){
       e.preventDefault();
       ext_id = $(this).attr('data-id');
       $(this).toggleClass("open").next(".fold").toggleClass("open");
       $(this).find(".panel-title").toggleClass("arrow");
       $('#showhide_'+ext_id).slideToggle('fast');

   });
	$('.page-title').on('click', '.install', function (e) {
		var form = $('#install_form')[0];

		$('#install_modal').modal('show');
	});

	$('td.bread-actions').on('click', '.install_card', function (e) {
		var form = $(this);
		$("#footer_page_section_id").val( form.data("id") );
		$('#install_modal_card').modal('show');
	});
	$('td.bread-actions').on('click', '.install_custom_card', function (e) {
		var form = $(this);
		$("#footer_page_custom_section_id").val( form.data("id") );
		$('#install_modal_custom_card').modal('show');
	});

	if( $('select#template_type.form-control.select2').val() == "MEDIA" ){
        $(".form-group.section-is_layout2").show();
        $(".form-group.section-is_layout22card").hide();
        $("#custom_layout_style").hide();
	 }else if( $('select#template_type.form-control.select2').val() == "CUSTOM" ){
		 $(".form-group.section-is_layout2").hide();
		 $(".form-group.section-is_layout22card").hide();
		 $("#custom_layout_style").show();
	 }else{
		 $(".form-group.section-is_layout2").hide();
		 $(".form-group.section-is_layout22card").show();
		 $("#custom_layout_style").hide();
	 }
	 $('select#template_type.form-control.select2').change( function(){
		 $thisPrivent = $(this);
		 if( $thisPrivent.val() == "MEDIA" ){
			$(".form-group.section-is_layout2").show();
			$(".form-group.section-is_layout22card").hide();
		    $("#custom_layout_style").hide();
		 }else if( $thisPrivent.val() == "CUSTOM" ){
			$(".form-group.section-is_layout2").hide();
			$(".form-group.section-is_layout22card").hide();
		    $("#custom_layout_style").show();
		 }else{
			 $(".form-group.section-is_layout2").hide();
			$(".form-group.section-is_layout22card").show();
		    $("#custom_layout_style").hide();
		 }
	 });

	$(document ).on("submit","#install_forms",function(e) {
		//e.preventDefault()
		if (typeof FormData !== 'undefined') {
			var $form = $(this);

			// send the formData
			var formData = new FormData( $(this)[0] );

			var vidFileLength = $(this)[0].files.length;
			if(vidFileLength === 0){
				alert("Please select image.");
				return true;
			}
			$form.html('Uploading... <i class="fa fa-spinner fa-pulse  fa-fw"></i>');
			var imageaction = $(this).attr('action');
			$.ajax({
				url : $form.attr('action'),
				type : $form.attr('method'),
				data : formData,
				async : false,
				cache : false,
				contentType : false,
				processData : false,
				dataType:'html',
				success : function(data) {
					$(".imageload").append(data);
					if(imageaction =="upload_save"){
						$('input[name$="image_radio"]:last').parent().trigger("click");
						$('input[name$="image_radio"]:last').closest("form").submit();

						$('#myModal').modal('hide');
						setTimeout(function(){

							 }, 300);
						$form.html('Upload & Save');
					}else{
						$form.html('Upload');
						$("#player_image").val("");
					}
					//console.log(data);

				}
			});

		} else {
		   alert("Your Browser Don't support FormData API! Use IE 10 or Above!");
		}
	});

    $('#myModal').on('hidden.bs.modal', function () {
        $("#player_image").val("");
    })
    $('#edit_modal').on('hidden.bs.modal', function () {
       // location.reload();
    })
});

        var params = {};
        var $file;

        function deleteHandler(tag, isMulti) {
          return function() {
            $file = $(this).siblings(tag);

            params = {
                slug:   '{{ $dataType->slug }}',
                filename:  $file.data('file-name'),
                id:     $file.data('id'),
                field:  $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
          };
        }

    $('document').ready(function () {
            $('#slug').slugify();

            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.type != 'date' || elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
            $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
            $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
            $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.'.$dataType->slug.'.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $file.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing file.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();

		$('td').on('click', '.delete-page-section', function (e) {
			e.preventDefault();
            $('#delete_form')[0].action = $(this).attr('href');
            $('#delete_modal').modal('show');
        });

        $("#custom_layout_style .card").on('click', function(e){
            $("#custom_layout_style .card").removeClass('active');
            $(this).addClass('active');
            $("#layout_style").val($(this).data('layout'));

			$(".form-group.section-is_layout22card").hide();
            if($(this).data('layout') == 2)
                $(".form-group.section-is_layout22card").show();
        });

        $("#custom_template_type .card").on('click', function(e){
            $("#custom_template_type .card").removeClass('active');
            $(this).addClass('active');
            $("#layout_template").val($(this).data('layout'));

			// $(".form-group.section-is_layout22card").hide();
            // if($(this).data('layout') == 2)
            //     $(".form-group.section-is_layout22card").show();
        });


        });
    </script>
@stop

@push('javascript')
    <script>
        $(document).ready(function() {
            var additionalConfig = {
                selector: 'textarea.PageSectionsrichTextBox',
            }

            $.extend(additionalConfig, {!! json_encode('{}') !!})

            tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));

        });
	$(document).on('focusin', function(e) {
    if ($(e.target).closest(".mce-window").length || $(e.target).closest(".moxman-window").length) {
        e.stopImmediatePropagation();
    }
});
    </script>
@endpush



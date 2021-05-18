@extends('master')
@section('content')
<section id="hero">
	<div class="hero-container">
	  <div class="row">
		<div class="col-md-12">
		  <div class="herotext">
            <h2>Register<span style="color:var(--base-color)"> with us</span></h2>
            <br>
            Become a valued CAF India partner and increase your chances of getting noticed
	        </div>
			<img src="{{ Voyager::image( 'primary-pages/December2020/OL5gSEAdIxjDVxmBg5v4.jpg' ) }}"/>
		</div>
	  </div>
	</div>
</section>
<main id="main">
    <section id="how-can-help">
      <div class="container">
		<div id="notifications">
		@if(Session::has('successNgo'))
		   <div class="alert alert-success">
			 {{ Session::get('successNgo') }}
		   </div>
		@endif
		@if(Session::has('errors'))
			<div class="alert alert-warning">
			  <strong>Warning!</strong> Indicates a warning that might need attention.
			</div>
		@endif
		</div>
		<div class="page-content edit-add container-fluid">
			<div class="row">
			<div class="">
				<div class="panel panel-bordered">
				<div class=""><p class="text-danger">Note: Strick (*) mark use for the mandatory fields?</p></div>
            <!-- form start -->
            <form role="form" class="form-edit-add" action="{{route('ngo.register.store')}}"
               method="POST" enctype="multipart/form-data">
               <!-- PUT Method if we are editing -->
                @csrf
               <div class="row">
                  <!-- Adding / Editing -->
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="name_of_the_NGO">Name Of The NGO<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="name_of_the_NGO" placeholder="Name Of The NGO" value="{{old('name_of_the_NGO')}}">
					 <span class="text-danger">{{ $errors->first('name_of_the_NGO') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="date_of_registration">Date Of Registration<span class="text-danger">*</span></label>
                     <input  required  type="date" class="form-control" name="date_of_registration" placeholder="Date Of Registration" value="{{old('date_of_registration')}}" max="{{date('m-d-Y')}}"><span class="text-danger">{{ $errors->first('date_of_registration') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="registration_certificate_number">Registration Certificate Number</label>
                     <input  required  type="text" class="form-control" name="registration_certificate_number" placeholder="Registration Certificate Number" value="{{old('registration_certificate_number')}}">
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="12A_certificate_number">12A Certificate Number<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="12A_certificate_number" placeholder="12A Certificate Number" value="{{old('12A_certificate_number')}}"><span class="text-danger">{{ $errors->first('12A_certificate_number') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="location_of_registration">Location Of Registration<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="location_of_registration" placeholder="Location Of Registration" value="{{old('location_of_registration')}}"><span class="text-danger">{{ $errors->first('location_of_registration') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="legal_status">Legal Status</label>
                     <select class="form-control select2" name="legal_status"> <option value="Society"  selected="selected"  >Society</option> <option value="Trust"  >Trust</option> <option value="Section 8/25"  >Section 8/25</option>
                     </select>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="PAN">PAN<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="PAN" placeholder="PAN" value="{{old('PAN')}}"><span class="text-danger">{{ $errors->first('PAN') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="TAN">TAN</label>
                     <input  type="text" class="form-control" name="TAN" placeholder="TAN" value="{{old('TAN')}}"><span class="text-danger">{{ $errors->first('TAN') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="FCRA_number">FCRA Number</label>
                     <input  type="text" class="form-control" name="FCRA_number" placeholder="FCRA Number" value="{{old('FCRA_number')}}"><span class="text-danger">{{ $errors->first('FCRA_number') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="DARPAN_UNIQUE_ID">DARPAN UNIQUE ID</label>
                     <input  type="text" class="form-control" name="DARPAN_UNIQUE_ID" placeholder="DARPAN UNIQUE ID" value="{{old('DARPAN_UNIQUE_ID')}}"><span class="text-danger">{{ $errors->first('DARPAN_UNIQUE_ID') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="state_of_operation">State Of Operation<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="state_of_operation" placeholder="State Of Operation" value="{{old('state_of_operation')}}"><span class="text-danger">{{ $errors->first('state_of_operation') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="district_of_operation">District Of Operation<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="district_of_operation" placeholder="District Of Operation" value="{{old('district_of_operation')}}"><span class="text-danger">{{ $errors->first('district_of_operation') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6"  title="Link Format Like This :- https://exm.com OR https://www.exm.com">
                     <label class="control-label" for="website">Website Urlwebsite/Blog (URL, if available)</label>
                     <input  type="text" class="form-control" name="website" placeholder="Website Urlwebsite/Blog (URL, if available)" value="{{old('website')}}"><span class="text-danger">{{ $errors->first('website') }}</span> 
                     <span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-html="true" title="Link Format Like This :- https://exm.com OR https://www.exm.com"></span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="are_you_in_social_media">Are you in Social Media?</label>
                     <ul class="radio"> <li>    <input type="radio" id="option-are-you-in-social-media-y"       name="are_you_in_social_media" value="Y"  checked  >    <label for="option-are-you-in-social-media-y">Yes</label>    <div class="check"></div> </li> <li>    <input type="radio" id="option-are-you-in-social-media-n"       name="are_you_in_social_media" value="N"  >    <label for="option-are-you-in-social-media-n">No</label>    <div class="check"></div> </li>
                     </ul>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="registered_address">Registered Address<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="registered_address" placeholder="Registered Address" value="{{old('registered_address')}}"><span class="text-danger">{{ $errors->first('registered_address') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="correspondence_address">Correspondence Address</label>
                     <input  type="text" class="form-control" name="correspondence_address" placeholder="Correspondence Address" value="{{old('registration_certificate_number')}}"><span class="text-danger">{{ $errors->first('registration_certificate_number') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="income_tax_exemption">Income Tax Exemption</label>
                     <input  type="text" class="form-control" name="income_tax_exemption" placeholder="Income Tax Exemption" value="{{old('registration_certificate_number')}}"><span class="text-danger">{{ $errors->first('registration_certificate_number') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="thematic_sector_of_work">Thematic Sector Of Work<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="thematic_sector_of_work" placeholder="Thematic Sector Of Work" value="{{old('thematic_sector_of_work')}}"><span class="text-danger">{{ $errors->first('thematic_sector_of_work') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="chief_functionary_name">Chief Functionary Name<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="chief_functionary_name" placeholder="Chief Functionary Name" value="{{old('chief_functionary_name')}}"><span class="text-danger">{{ $errors->first('chief_functionary_name') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="chief_functionary_email">Chief Functionary Email<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="chief_functionary_email" placeholder="Chief Functionary Email" value="{{old('chief_functionary_email')}}"><span class="text-danger">{{ $errors->first('chief_functionary_email') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="chief_functionary_number">Chief Functionary Number(use comma for multiple)</label>
                     <input  type="text" class="form-control" name="chief_functionary_number" placeholder="Chief Functionary Number(use comma for multiple)" value="{{old('chief_functionary_number')}}"><span class="text-danger">{{ $errors->first('chief_functionary_number') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="contact_person_name">Contact Person Name</label>
                     <input  type="text" class="form-control" name="contact_person_name" placeholder="Contact Person Name" value="{{old('contact_person_name')}}"><span class="text-danger">{{ $errors->first('contact_person_name') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="contact_person_email">Contact Person Email</label>
                     <input  type="text" class="form-control" name="contact_person_email" placeholder="Contact Person Email" value="{{old('contact_person_email')}}"><span class="text-danger">{{ $errors->first('contact_person_email') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="contact_person_number">Contact Person Number</label>
                     <input  type="text" class="form-control" name="contact_person_number" placeholder="Contact Person Number" value="{{old('contact_person_number')}}"><span class="text-danger">{{ $errors->first('contact_person_number') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="local_and_national_network">List of all local and national network you are member of</label>
                     <input  type="text" class="form-control" name="local_and_national_network" placeholder="List of all local and national network you are member of" value="{{old('local_and_national_network')}}"><span class="text-danger">{{ $errors->first('local_and_national_network') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="financia_year">Financia Year</label>
                     <input  type="text" class="form-control" name="financia_year" placeholder="Financia Year" value="{{old('financia_year')}}"><span class="text-danger">{{ $errors->first('financia_year') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="gross_amount">Gross Amount</label>
                     <input  type="text" class="form-control" name="gross_amount" placeholder="Gross Amount" value="{{old('gross_amount')}}"><span class="text-danger">{{ $errors->first('gross_amount') }}</span>
                  </div>
                  <!-- GET THE DISPLAY OPTIONS -->
                  <div class="form-group  col-md-6">
                     <label class="control-label" for="sponsored_by">Sponsored By (Have you been validated by CAF?)</label>
						 <ul class="radio"> 
							 <li><input type="radio" id="option-sponsored-by-y" name="sponsored_by" value="Y"  checked  >    <label for="option-sponsored-by-y">Yes</label> 
								<div class="check"></div> 
							 </li> 
							 <li><input type="radio" id="option-sponsored-by-n" name="sponsored_by" value="N">
								 <label for="option-sponsored-by-n">No</label>
								 <div class="check"></div>
							 </li>
						 </ul>
                  </div>
				   <div class="form-group  col-md-12">
						 <p>Term and Conditions:<br>
						   The information provided above is true to our knowledge. Our organisation has no objection in the     above information being listed and used as a part of CAF India's NGO database. Information can be accessed by CAF India or any other organisation.
						</p>
					</div>
               </div>
               <!-- panel-body -->
               <div class="panel-footer">
                  <button type="submit" class="btn btn-primary save">Save</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
	</div>
	</section>
</main>
@endsection
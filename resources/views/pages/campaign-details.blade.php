@extends('master')
@section('content')
<!-- ======= Hero Section ======= -->
<style>
	.herotext .form-control{
		border: rgb(73, 72, 72) 1px solid;
		border-radius: 1px;
		font-size: 13px;
	}
	.herotext .submit-btn {
		width: 100%;
		background: var(--base-color);
		outline: none;
		border: none;
		border-radius: 20px;
		padding: 15px 0;
		color: #fff;
		font-size: 20px;
		letter-spacing: 5px;
		font-weight: bold; 
		text-align: center;
	}
	.herotext .prev-btn{
		background: var(--base-color);
		outline: none;
		border: none;
		color: #fff;
		padding: 0 15px;
		font-size: 12px;
		letter-spacing: 5px; 
		width: 150px;
		display: inline-block;
	}
	.herotext .prev-btn i{
		transform: scaleY(1.5);
	}
	.herotext .prev-btn .prev{
		background: none;
		outline: none;
		border: none;
		color: #fff;
	}
	.form-data-container{
		border: rgb(73, 72, 72) 1px solid;
		border-radius: 1px;
		font-size: 13px;
		background: #fff;
		padding: 5px 10px;
	}
	.form-data-container .span{
		line-height: 15px;
		height: 35px;
	}
	.form-info{
		width:32%;
		margin-left: 55%;
		color: #888;
		font-size: 12px;
	}
	.form-data-container input{
		outline: none;
		border: none;
		background: none;
	} 
	.form-field-selector{
		transition: .4s;
	}

	.form-field-selector:hover, .form-field-selector.active{
		background-color: var(--base-color);
		color: #fff;
	}
	.tax-section{
		background-image: url(/assets/img/tax.png);
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
  		background-position: center;
		height: 200px;;
	}
	.give-now-btn{
		background: url(/assets/img/give-now-btn.png) no-repeat;
		background-size: contain;
		width: 200px;
		height: 40px;
		position: absolute;
		bottom: 15%;
		right: 7%;
	}

	.give-now-btn-inner{
		width: 200px;
		height: 40px;
	}
</style>
<section id="hero">
	<div class="hero-container">
	  <div class="row">
		<div class="col-md-12" style="padding-top: 200px">
			<div class="banner-container" style=" top:0; height: 650px; width:100%; z-index: 5; position: absolute; background: url({{ Voyager::image( $dataRow->image )}}) no-repeat center; background-size: cover; " ></div>
			<div class="banner-container d-flex" style=" top:660px; height: 165px; width:100%; z-index: 5; position: absolute; background: #ebebeb;" >
				<div class="form-info align-self-center form-one">
					<div style="font-weight: bolder; font-size: 15px; color:#333">
						FINANCIAL DETAILS
					</div>
					<div  style="line-height: 18px">
						Permanent Account Number: AAATC0742K
						<br>
						80G Registration Number: DIT(E)/2009-2010/C-536/408
						<br>
						Dated: 29/05/2009
					</div>
					<div style="font-size: 10px; line-height: 12px">
						* Kindly used above bank details only for Indian and NRI's. If any foreign entity or individual please do not use above bank details.
					</div>
				</div>
				<div class="form-info align-self-center form-two">
					<div class="mb-2">
						*80G Certificate will be issued on donation amounting 
						₹ 500 or abouve only.
					</div>
					<div>
						By sharing your details, you agree to receive tax receip, stories and updates from Oxfam India via mobile, Whatsapp, landline, email, and post.
						<br>
						If you'd like to change this, please send us an email on <a href="mailto:contact@cafindia.org" target="_blank" style="color: var(--base-color)">contact@cafindia.org</a>
					</div>
				</div>
			</div>
			<div class="herotext" style="width: 40%; position: relative; z-index: 10; background-color: #edebec; border-radius: 10px; box-shadow: rgba(0,0,0,.4) 0 0 5px; margin: 10px; padding: 25px; ">
				<div>
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
					<form  role="form" class="form-edit-add" id="form" action="{{route('donate.now.store')}}"
					method="POST" enctype="multipart/form-data">
						@csrf
						<div class="row form-one">
							<div class="form-group col-md-6 " >
								<label style="color: var(--base-color)">I AM</label>
								<select class="form-control" name="donor_type" >
									<option value="Indian Donors">Indian Donors</option>
								</select>
								<span class="text-danger">{{ $errors->first('name') }}</span>
							</div>
							<div class="form-group  col-md-12" >
								<label><span  style="color: var(--base-color)">CHOOSE</span> PAYMENT METHOD</label>
								<div class="d-flex justify-content-between">
									<div class="form-group  col-md-6 ml-0 pl-0" >
										<div class="form-control form-field-selector payment-method" data-value="One Time Donation">
											One Time Donation
										</div>
									</div>
									<div class="form-group  col-md-6 mr-0 pr-0" >
										<div class="form-control form-field-selector  payment-method" data-value="Monthly Donation">
											Monthly Donation
										</div>
									</div>
								</div>
								<input type="hidden" name="payment_method" id="payment_method" />
							</div>
							<div class="form-group  col-md-12" >
								<label><span  style="color: var(--base-color)">I WANT TO</span> TRANSFORM A LIFE</label>
								<div class="d-flex justify-content-between">
									<div class="form-group  col-md-6 ml-0 pl-0" >
										<div class="form-data-container form-field-selector transform-life" data-value="750" >
											<div>₹ 750</div>
											<div class="span" style="font-size: 11px;">Sponsor bridge education for a child</div>
										</div>
									</div>
									<div class="form-group  col-md-6 mr-0 pr-0" >
										<div class="form-data-container form-field-selector transform-life" data-value="1000">
											<div>₹ 1000</div>
											<div class="span" style="font-size: 11px;">Sponsor complete health check up for a senior citizen</div>
										</div>
									</div>
								</div>
								<div class="d-flex justify-content-between">

									<div class="form-group  col-md-6 ml-0 pl-0" >
										<div class="form-data-container form-field-selector transform-life" data-value="1500">
											<div>₹ 1500</div>
											<div class="span" style="font-size: 11px;">Help a mother learn a new skill</div>
										</div>
									</div>
									<div class="form-group  col-md-6 mr-0 pr-0" >
										<div class="form-data-container form-field-selector transform-life" data-value="2000">
											<div>₹ 2000</div>
											<div class="span" style="font-size: 11px;">Empower a disabled youth by helping him/her learn a new skill</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group  col-md-12 ">
								<div class="p-0 m-0 form-data-container d-flex">
									<div class="mr-2" style="background: var(--base-color); color:#fff; padding:5px 15px; font-size: 16px;">₹</div>
									<input type="text " class="flex-grow-1" name="other_amount" id="other_amount" placeholder="OTHER AMOUNT" />
								</div>
							</div>
							<input type="hidden" name="donation_amount" id="donation_amount" />
							<div class="form-group  col-md-12 ">
								<div class="submit-btn next-btn" >
									GIVE N<span style="color: #ffcc01;"><i class="fa fa-heart"></i></span>W
								</div> 
								<div style="text-align: center; font-size: 11px; line-height:12px; margin-top: 5px;">Secure Payment : This site is protected by reCAPTACHA and the Google Privacy Policy and Terms of Service apply</div>
							</div>
						</div> 
						<div class="row form-two">
							<div class="form-group col-md-6 " >
								<input required type="text" class="form-control" name="name"
								placeholder="Name *"
									value="{{old('name')}}"><span class="text-danger">{{ $errors->first('name') }}</span>
							</div>
							<div class="form-group  col-md-6 " >
								<input type="number" class="form-control custom-number" name="mobile" maxlength="10"
								placeholder="Mobile *"
									value="{{old('mobile')}}"><span class="text-danger">{{ $errors->first('mobile') }}</span>
							</div>
							<div class="form-group  col-md-12 " >
								<input  type="email" class="form-control" name="email"
								placeholder="Enter Your Email Address * "
									value="{{old('email')}}"><span class="text-danger">{{ $errors->first('email') }}</span>
							</div>
							<div class="form-group  col-md-12 " >
								<input  type="text" class="form-control" name="address"
								placeholder="Address *"
									value="{{old('address')}}"><span class="text-danger">{{ $errors->first('address') }}</span>
							</div>
							<div class="form-group  col-md-6 " >
								<input  type="text" class="form-control" name="country"
								placeholder="Country *"
									value="{{old('country')}}"><span class="text-danger">{{ $errors->first('country') }}</span>
							</div>
							
							<div class="form-group  col-md-6 " >
								<input  type="text" class="form-control" name="state"
								placeholder="State *"
									value="{{old('state')}}"><span class="text-danger">{{ $errors->first('state') }}</span>
							</div>
							
							<div class="form-group  col-md-6 " >
								<input  type="text" class="form-control" name="city"
								placeholder="City *"
									value="{{old('city')}}"><span class="text-danger">{{ $errors->first('city') }}</span>
							</div>
							
							<div class="form-group  col-md-6 " >
								<input  type="text" class="form-control" name="pincode"
								placeholder="Zip/Area/Pincode *"
									value="{{old('pincode')}}"><span class="text-danger">{{ $errors->first('pincode') }}</span>
							</div>
							<div class="form-group  col-md-12 " >
								<input  type="text" class="form-control" name="nationality"
								placeholder="Nationality"
								value="{{old('nationality')}}"><span class="text-danger">{{ $errors->first('nationality') }}</span>
							</div>
							<div class="form-group  col-md-12 " >
								<input  type="text" class="form-control" name="pan_number"
								placeholder="Pan Number"
								style='text-transform:uppercase'
									value="{{old('pan_number')}}"><span class="text-danger">{{ $errors->first('pan_number') }}</span>
								<span style="font-size: 12px;">*For 80G tax exemption receipt</span>
							</div>
							<div class="form-group  col-md-12 ">
								<select class="form-control" name="payment_mode">
									<option value="" selected disabled>Credit Card/ Debit Card/ Net Banking</option>
									<option value="Credit Card">Credit Card</option>
									<option value="Debit Card Card">Debit Card</option>
									<option value="Net Banking">Net Banking</option>
								</select>
							</div>
							<div class="form-group  col-md-12 ">
								<div class="prev-btn d-flex">
									<div style="float: left; margin-right:15px;" ><i class="fa fa-angle-left"></i></div>
									<div style="float: right;" class="prev">Previous</div> 
									<div style="clear: both"></div>
								</div>
							</div>
							<div class="form-group  col-md-12 ">
								<button class="submit-btn" name="submit-form">SUBMIT</button> 
								<div style="text-align: center; font-size: 11px; line-height:12px; margin-top: 5px;">Secure Payment : This site is protected by reCAPTACHA and the Google Privacy Policy and Terms of Service apply</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		  {{-- @if( $dataRow->image ) 
			<img src="" />
		  @endif --}}
		</div>
	  </div>
	</div>
</section>
<main id="main">
	<div class="container-fluid tax-section">
		<div class="d-flex justify-content-center h-100">
			<div class="text-center align-self-center">
				<div>
					<h3 style="color: #fff; letter-spacing: 5px;">80G TAX BENEFITS</h3>
				</div>
				<div style="color: #fff">Avail 50% tax exemption under Section 80G (5) (IV) of Income tax Act 196</div>
			</div>
		</div>
	</div>
	
	{!! $dataRow->about_the_campaign !!}
   
	{{-- <section class="servicesection2">
	  <div class="container">
		<h3 class="heading_c"></h3>
		<div class="row">
		  <div class="col-md-12">
			
		  </div>
		</div>
		<div class="row">
			@php
				$url = $dataRow->video_url; 
				preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $url, $matches);
			@endphp
			<div class="col-md-5">
				@if(isset($matches[1]) )
					<iframe width="445" height="272" src="https://www.youtube.com/embed/{{$matches[1]}}" frameborder="0"
					  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					  allowfullscreen></iframe>
				@eleif( !empty( $url ) )
					<video width="400" controls>
					  <source src="{{ Voyager::image( $url )}}" type="video/mp4">
					  <source src="{{ Voyager::image( $url )}}" type="video/ogg">
					  Your browser does not support HTML video.
					</video>
				@endif
			 </div>
			  <div class="col-md-7">
				<h3 class="heading_c">{{$dataRow->campaign_target}}</h3>
				<p>{!! $dataRow->social_impact !!}</p>
				@if($dataRow->link)
				<a class="@if($dataRow->link_type == 'BUTTON') btn btn-primary @endif" style="margin: 0px;" href="{{$dataRow->link}}"
				  target="_blank">{{$dataRow->link_text}}</a>
				 @endif
			  </div>
			<div class="col-md-12">
				@if(json_decode($dataRow->document) !== null)
				@foreach(json_decode($dataRow->document) as $file)
					<a href="{{ Storage::disk(config('voyager.storage.disk'))->url($file->download_link) ?: '' }}" target="_blank">
						{{ $file->original_name ?: '' }}
					</a>
					<br/>
				@endforeach
				@elseif($dataRow->document)
				<a href="{{ Storage::disk(config('voyager.storage.disk'))->url($dataRow->document) }}" target="_blank">
					Download
				</a>
				@endif
			</div>
		</div>
		
	  </div>
	</section> --}}

</main>
 @endsection

 @section("javascript") 
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	 <script src="https://maps.google.com/maps/api/js?key=AIzaSyDd0GNRVTvpWF2uo2CdJosSqWc_etrdV-E&libraries=places" type="text/javascript"></script>
	 <script>
		 $(function(){ 
			//  alert();
			//  $("#register").on('click', function(e){
			// 	 $("#register-form").submit();
			//  });

			var html = '<a href="/give-now"><div class="give-now-btn-inner"></div></a>';

			$(".give-now-btn").html(html);

			$("#other_amount").on('change', function(){
				if($(this).val() != "") {
					$('.form-field-selector.transform-life').removeClass('active');
					$("#donation_amount").val($("#other_amount").val());
				}
			});

			$('.form-field-selector.payment-method').on('click', function(){
				$('.form-field-selector.payment-method').removeClass('active');
				$(this).addClass('active');
				$("#payment_method").val($(this).data('value'));
			});
			$('.form-field-selector.transform-life').on('click', function(){
				$('.form-field-selector.transform-life').removeClass('active');
				$(this).addClass('active');
				$("#other_amount").val("");
				$("#donation_amount").val($(this).data('value'));
			});

			$(".form-one").show();
			$(".form-two").hide();

			$('.next-btn').on('click', function() {
				$(".form-one").hide();
				$(".form-two").show();
			});
			$('.prev-btn').on('click', function() {
				$(".form-one").show();
				$(".form-two").hide();
			});

			 $.validator.addMethod("regex", function(value, element, regexpr) {
				 return regexpr.test(value);
			 }, "Provide a valid input for experience.");
			 $.validator.addMethod("notEquals", function(value, element, id) {
				 return $(id).val() != 'warning';
			 }, "Please specify a different (non-default) value");

 
			 $("#form").validate({
				 // Specify validation rules
				 rules: {
					 name: "required",
					 email: {
						 required: true,
						 email: true,
					 },
					 mobile: {
						required: true,
						regex: /^(\+\d{1,3}[- ]?)?\d{10}$/
					 },
					 nationality: "required",
					 payment_mode: "required",
					 address: "required",
					 country: "required",
					 state: "required",
					 city: "required",
					 pan_number: {
						 required: true,
						 regex: /[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}/
					 },
				 },
				 // Specify validation error messages
				 messages: {
				   name: "Please enter your name",
				   email: "Please enter a valid email address",
				   mobile: {
					  required: "Please provide a mobile number",
					  regex: "Please provide a valid mobile number",
				   },
				   nationality: "Please provide nationality",
				   payment_mode: "Please select a payment mode",
				   address: "Please provide an address",
				   country: "Please provide a country",
				   state: "Please provide a state",
				   city: "Please provide a city",
				   pan_number: "Please provide a PAN",
				 },
				 // Make sure the form is submitted to the destination defined
				 // in the "action" attribute of the form when valid
				 submitHandler: function (form) {
					 form.submit();
				 }
			 });
 
			 $("#mobile").on('keyDown', function (e) {
				if((e.which >= 48 && e.which <= 57) || e.which >= 96 && e.which <= 105 ) {
				   return true;
				}
				e.preventDefault();
				return false;
			 })
 
		 });
	 </script>
 
 
 
 @stop
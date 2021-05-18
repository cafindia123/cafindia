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
            <form role="form" class="form-edit-add" id="form" action="{{route('donate.now.store')}}"
               method="POST" enctype="multipart/form-data">
               <!-- PUT Method if we are editing -->
                @csrf
               <div class="row">
                  <!-- Adding / Editing -->
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="name">Name<span class="text-danger">*</span></label>
                     <input  required  type="text" class="form-control" name="name"
                        placeholder="Name"
                         value="{{old('name')}}"><span class="text-danger">{{ $errors->first('name') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="email">Email<span class="text-danger">*</span></label>
                     <input  type="email" class="form-control" name="email"
                        placeholder="Email"
                         value="{{old('email')}}"><span class="text-danger">{{ $errors->first('email') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="mobile">Mobile<span class="text-danger">*</span></label>
                     <input  type="number" class="form-control custom-number" name="mobile"
                        placeholder="Mobile"
                         value="{{old('mobile')}}"><span class="text-danger">{{ $errors->first('mobile') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="organization">Organization<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="organization"
                        placeholder="Organization"
                         value="{{old('organization')}}"><span class="text-danger">{{ $errors->first('organization') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="nationality">Nationality<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="nationality"
                        placeholder="Nationality"
                         value="{{old('nationality')}}"><span class="text-danger">{{ $errors->first('nationality') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="givig_amount">Givig Amount<span class="text-danger">*</span></label>
                     <input  required  type="number" class="form-control custom-number" name="givig_amount"
                        placeholder="Givig Amount"
                         value="{{old('givig_amount')}}"><span class="text-danger">{{ $errors->first('givig_amount') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="payment_mode">Payment Mode<span class="text-danger">*</span></label>
                     <select class="form-control select2" name="payment_mode">
                        <option value="By Card"  selected="selected"  >By Card</option>
                        <option value="Net Banking"  >Net Banking</option>
                        <option value="By Cheque"  >By Cheque</option>
                     </select>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="address">Address<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="address"
                        placeholder="Address"
                         value="{{old('address')}}"><span class="text-danger">{{ $errors->first('address') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="country">Country<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="country"
                        placeholder="Country"
                         value="{{old('country')}}"><span class="text-danger">{{ $errors->first('country') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="state">State<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="state"
                        placeholder="State"
                         value="{{old('state')}}"><span class="text-danger">{{ $errors->first('state') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="city">City<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="city"
                        placeholder="City"
                         value="{{old('city')}}"><span class="text-danger">{{ $errors->first('city') }}</span>
                  </div>
                  
                  <div class="form-group  col-md-6 " >
                     <label class="control-label" for="pan_number">Pan Number<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="pan_number"
                        placeholder="Pan Number"
                        style='text-transform:uppercase'
                         value="{{old('pan_number')}}"><span class="text-danger">{{ $errors->first('pan_number') }}</span>
                  </div>
				  @auth
				  
				  @else
                  <div class="form-group  col-md-6" >
                     <label class="control-label" for="subscribed">Do you want to subscribe to the campaign?</label>
					 <input id="subscribed" class="form-controlss" type="checkbox" name="subscribed" value="1" />
                     <label class="item-text" for="subscribed">Yes</label>
                  </div>
                  <div class="form-group  col-md-6 answer" >
                     <label class="control-label" for="password">Password<span class="text-danger">*</span></label>
                     <input  type="text" class="form-control" name="password" placeholder="Enter Password"><span class="text-danger">{{ $errors->first('password') }}</span>
                  </div>
				  @endif
               </div>
               <!-- panel-body -->
               <div class="panel-footer col-md-6">
                  <button type="submit" class="btn btn-primary save">Save</button>
               </div>
					</form>
				 </div>
			  </div>
		   </div>
		</div>
	</div>
</section>
<style>.answer { display:none }</style>
@section("javascript")
<script>
	$(function() {
	  $("#subscribed").on("click",function() {
		$(".answer").toggle(this.checked);
	  });
	});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyDd0GNRVTvpWF2uo2CdJosSqWc_etrdV-E&libraries=places" type="text/javascript"></script>
    <script>
        $(function(){
            $("#register").on('click', function(e){
                $("#register-form").submit();
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
                    organization: "required",
                    nationality: "required",
                    givig_amount: {
                        required: true,
                        regex: /^[0-9]+$/,
                    },
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
                  organization: "Please provide organization name",
                  nationality: "Please provide nationality",
                  givig_amount: "Please provide givig amount",
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
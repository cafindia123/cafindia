@extends('master')
@section('content')
  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div class="row">
          <div class="col-md-12">
            <div class="herotext">
              <h2><span style="color:var(--base-color)">Reach</span> us</h2>
              <br>
              It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters
            </div>
            <img src="assets/image/contact.jpg" >
          </div>
      </div>
    </div>
  </section><!-- End Hero -->

  <style>
    .heading_c{
      
    }
  </style>

  <main id="main">
    <section id="how-can-help">
      <div class="container">

        <div class="row">
          <div class="col-lg-7">
            <h3 class="heading_c">Make giving count</h3>            
            <div>
              <strong>For general inquiries</strong><br>
              +91 11 6142 4141 | contactus@cafindia.org<br><br>

              <strong>For becoming a donor</strong> | Learn more about our service and offerings write to xxxxxx@cafindia.org<br>

            <strong>For media inquiries</strong><br>
              pressdesk @cafindia.org
            </div>
            <div class="mt-5">
              <h3 class="heading_contact">Our head office</h3>

Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
Vestibulum ut augue sem.<br>
Proin nec lacus vel purus fermentum hendrerit. Fusce libero urna, auctor vitae laoreet sed<br>
            </div>
          </div>
          <div class="col-lg-5">                      
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3504.5467299860575!2d77.12149091455777!3d28.5533408944127!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d1d3bc022b98d%3A0xacd82a99900151e!2sCAF%20India%20Pvt%20Limited!5e0!3m2!1sen!2sin!4v1604830509322!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </div>
        </div>
		<form action="{{route('contactus.store')}}" method="post" id="contact-us">
        <div class="row">
            <div class="col-md-6">
              <h3 class="heading_c">Contact form</h3>
				@if(Session::has('success'))
				   <div class="alert alert-success">
					 {{ Session::get('success') }}
				   </div>
				@endif
              <p>
                Proin nec lacus vel purus fermentum hendrerit. Fusce libero urna, auctor vitae laoreet sed, sollicitudin nec lectus. Donec aliquet tempus mattis. Quisque tincidunt eros egestas
              </p>
              
			  @csrf
                <div class="form-group">
                  <label for="name">Name</label>
                  <input value="{{old('name')}}" type="name" name="name" class="form-control" id="name" aria-describedby="nameHelp" placeholder="Enter name" required>
                  <small id="nameHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  <span class="text-danger">{{ $errors->first('name') }}</span>
                </div>
                <div class="form-group">
                  <label for="email">Email Address</label>
                  <input value="{{old('email')}}" type="email" name="email" class="form-control" id="email" placeholder="Enter Email" required>
				  <span class="text-danger">{{ $errors->first('email') }}</span>
                </div>                
             
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="Message">Message</label>
                <textarea id="Message" name="message" class="form-control" style="height:150px" form="contact-us" placeholder="Enter Message" required>{{old('message')}}</textarea>
				<span class="text-danger">{{ $errors->first('message') }}</span>
			  </div>
              <div class="row">
                <div class="col-md-6">
					@if(env('GOOGLE_RECAPTCHA_KEY'))
						 <div class="g-recaptcha"
							  data-sitekey="{{env('GOOGLE_RECAPTCHA_KEY')}}">
						 </div>
					@endif
				<span class="text-danger">{{ $errors->first('g-recaptcha-response') }}</span>
                </div>
                <div class="col-md-6">
                  <button class="btn btn-primary float-right mt-4" form="contact-us">Submit</button>
                </div>
              </div>
            </div>
        </div>
			 </form>

      </div>
    </section>
</main><!-- End #main -->
  
<!-- Modal Subscribe--> 
<div class="modal" id="modalCONTACT">
	<div class="modal-dialog">
	  <!-- Modal content-->
	  <div class="modal-content">
		<div class="modal-header">
		  <h4 class="modal-title tagline" style="color: var(--base-color);">CONTACT US</h4>
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		</div>
		<div class="modal-body">
		@if(Session::has('success'))
		   <div class="alert alert-success">
			 {{ Session::get('success') }}
		   </div>
		@endif
		</div>
	  </div>
	</div>
</div>
@endsection
@section('javascript')
<script src='https://www.google.com/recaptcha/api.js'></script>
<script>
	@if(Session::has('success'))
		 $(window).on('load', function() {
			$('#modalCONTACT').modal('show');
		});
	@endif
</script>
@stop
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>{{ setting('site.title') }}</title>
  <meta content="{{setting('site.description')}}" name="description">
  <meta content="{{setting('site.keywords')}}" name="keywords">
  <!-- Favicons -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="{{ asset('assets/image/caf-logo-orange.png') }}" rel="icon">
  <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
  <!-- font-family: 'Bebas Neue', cursive; -->
  <!-- Vendor CSS Files -->
  <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/icofont/icofont.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/animate.css/animate.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/venobox/venobox.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/owl.carousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/aos/aos.css') }}" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
  <script src="https://kit.fontawesome.com/b09250156d.js" crossorigin="anonymous"></script>
  @yield('stylesheet')
	<style>#footer .footer-top h4 a {
		color: #fff;
	}
	</style>
</head>
<body class="custom-scrollbar">
    <section class="caf-container">
  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-lg-block clearfix">
    <div class="container-fluid clearfix px-0">
      <div class="row pl-5 pr-2">
        <div class="col-md-7 col-sm-7 col-lg-7">
			<div class="contact-info float-left d-flex">
				<div class="search">
				  <form class="example" action="{{ route('search') }}">
					<input type="text" placeholder="" name="search">
					<button type="submit">GO</button>
				  </form>
				</div>
			</div>
			<div class="contact-info align-self-center mt-1">
			  <span class="social-links ml-3">
				<a href="{{ setting('site.facebook-link') }}" target="_blank" class="facebook"><i class="icofont-facebook"></i></a>
				<a href="{{ setting('site.twitter-link') }}" target="_blank" class="twitter"><i class="icofont-twitter"></i></a>
				<a href="{{ setting('site.linkedin-link') }}" target="_blank" class="linkedin"><i class="bx bxl-linkedin"></i></a>
				<a href="{{ setting('site.youtube-link') }}" target="_blank" class="youtube"><i class="icofont-youtube"></i></a>
			  </span>
			</div>
		 </div>
        <div class="col-md-5 col-sm-5 col-lg-5">
			<div class="links float-right">
				@if(Route::has('login'))
					@auth
						<a href="{{ url('/dashboard') }}" class="twitter" target="_blank">{{ Auth::user()->role_id==2 ? "My Givings" : "My Account" }} </a>
					@else
						<a href="{{ route('login') }}" class="twitter"  target="_blank">Login</a>
						@if (Route::has('register'))
							<a href="{{ route('register') }}" class="twitter"  target="_blank">Register</a>
						@endif
					@endif
				@endif
				<!--<a href="#" class="twitter"><span style="color: var(--base-color);">Donate</span> to a charity</a>-->
				<a href="javascript:;" class="twitter" data-toggle="modal" data-target="#modalSubscribe" style="color: var(--base-color)">Subscribe</a>
			</div>
		</div>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="clearfix">
    <div class="container-fluid px-0">
      <div class="row heads px-5 mt-4">
        <div class="col-md-3 col-sm-3 col-lg-3 tagline" style="margin-top: 10px;">
         <a href="{{ route('welcome') }}" style="color: var(--base-gray)">we <span style="color: var(--base-color);">make giving</span> count</a>
        </div>
        <div class="col-md-9 col-sm-9 col-lg-9 mb-3">
          <nav class="nav-menu d-none d-lg-block">
            <ul>
              @foreach($PrimaryCategory as $rowKey=>$rowData)
                @if($rowData->primaryPage)
                  <?php $parentCat = $rowData->slug; ?>
                  <li class="parentNav {{ request()->is($parentCat.'*') ? 'active' : '' }} @if($rowData->parent_items->isNotEmpty()) drop-down @endif">
                    @if ($rowData->redirect)
                      <a href="{{ url($rowData->redirect) }}">{{$rowData->name}}</a>
                    @else
                      <a href="{{ route('PrimaryNavBar', ['page_slug' => $rowData->slug ])}}">{{$rowData->name}}</a>
                    @endif
                    @if($rowData->parent_items->isNotEmpty())
                    <ul>
                      @foreach($rowData->parent_items as $rowKey=>$rowData)
                        <?php $child_slug = $rowData->slug; ?>
                        @if($rowData->primaryPage)
                          <li class="childNav @if($rowData->children->isNotEmpty()) drop-down @endif">
                            @if ($rowData->redirect)
                              <a href="{{ url($rowData->redirect) }}">{{$rowData->name}}</a>
                            @else
                            <a href="{{ route('PrimaryNavBarChaild', ['page_slug' => $parentCat,'child_slug'=>$rowData->slug ])}}">{{$rowData->name}}</a>
                            @endif
                            
                            @if($rowData->children->isNotEmpty())
                              <ul>
                                @foreach($rowData->children as $rowKey=>$rowData)
                                  <?php $sub_child_slug = $rowData->slug; ?>
                                  @if($rowData->primaryPage)
                                    @if ($rowData->redirect)
                                      <li><a href="{{ url($rowData->redirect) }}">{{$rowData->name}}</a></li>
                                    @else
                                      <li><a href="{{ route('PrimaryNavBarSubChild', ['page_slug' => $parentCat,'child_slug'=>$child_slug,'sub_child_slug'=>$sub_child_slug])}}">{{$rowData->name}}</a></li>
                                    @endif
                                  @endif
                                @endforeach
                              </ul>
                            @endif
                          </li>
                        @endif
                      @endforeach
                      @if($parentCat == 'give-now')
                        @foreach($campaigns_nav as $rowKey=>$rowData)
                          <li class="childNav">
                            <a href="{{route('campaign.details',['slug'=>$rowData->slug])}}">{{$rowData->title}}</a>
                          </li>
                        @endforeach
                      @endif
                    </ul>
                    @endif
                  </li>
                @endif
              @endforeach
            </ul>
          </nav><!-- .nav-menu -->
        </div>
      </div>
      <div class="logoline">
        {{-- <img class="normal-logo" src="{{ asset('assets/image/logo-line-orange.png') }}" usemap="#image-map"> --}}
        <img class="mobile-logo" style="display: none;" src="{{ asset('assets/image/logo-line.png') }}">

        <map name="image-map" >
            <area target="_self" alt="CAF India" title="CAF India" href="https://cafindia.jaisalmercity.com/" coords="1478,77,1598,0" shape="rect">
        </map>
      </div>
    </div>
    <a href="{{ route('welcome') }}" class="logolink"></a>
  </header>
  <!-- End Header -->

 @yield('content')

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top p-0">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3 col-md-6 d-flex my-4">
            <div class="align-self-center ml-5"><a href="{{ route('welcome') }}"><img src="{{ asset('assets/image/caf-logo-white.png') }}" class="img-fluid" alt=""></a></div>
          </div>

			@foreach($footerNavigation as $rowKey=>$rowData)
				<div class="col-lg-2 col-md-6 footer-links my-4">
				<?php $parentCat = $rowData->slug; $post_slug = $rowData->post? $rowData->post->slug:$rowData->slug;  ?>
				 <h4 class="footer_header">
           @if (strtolower($rowData->name) == 'who we are')
           <a href="{{ route('footerNavBarChaild', ['category_slug' => $parentCat,'child_slug'=>$post_slug ])}}">{{$rowData->name}}</a>
          @elseif (strtolower($rowData->name) == 'what we do')
          <a href="{{ route('footerNavBarChaild', ['category_slug' => $parentCat,'child_slug'=>$post_slug ])}}">{{$rowData->name}}</a>
          @else
          <a>{{$rowData->name}}</a>
           @endif
          </h4>
				 @if($rowData->parent_items->isNotEmpty())
					<ul>
						@foreach($rowData->parent_items as $rowKey=>$rowData)
						<?php $child_slug = $rowData->slug; ?>
						@if($rowData->post)
              @if($rowData->slug == "connect-workshop")
                <li><a href="{{ route('PrimaryNavBarChaild', ['page_slug' =>'for-ngos','child_slug'=>'capacity-building' ])}}">{{$rowData->name}}</a></li>
							@elseif($rowData->slug == "thematic-impacts")
                
              @else
                <li class="childNav @if($rowData->children->isNotEmpty()) drop-down @endif">
                  <a href="{{ route('footerNavBarChaild', ['category_slug' => $parentCat,'child_slug'=>$rowData->slug ])}}">{{$rowData->name}}</a>
                  @if($rowData->children->isNotEmpty())
                    <ul>
                      @foreach($rowData->children as $rowKey=>$rowData)
                      <?php $sub_child_slug = $rowData->slug; ?>
                      @if($rowData->post)

                        <li><a href="{{ route('footerNavBarSubChaild', ['category_slug' => $parentCat,'child_slug'=>$child_slug,'sub_child_slug'=>$sub_child_slug])}}">{{$rowData->name}}</a></li>
                      @endif
                      @endforeach

                    </ul>
                  @endif

                  {{-- @if($rowData->slug == "senior-management-team") --}}

                  {{-- <li><a href="https://cafindia.jaisalmercity.com/trustees">Our Board of Trustees</a></li>
                  <li><a href="https://cafindia.jaisalmercity.com/trustees">Our Executive Team</a></li> --}}

                  {{-- @endif --}}
                </li>
              @endif
						@endif
						@endforeach
						@if($parentCat == "what-we-do")
              
							<li><a href="{{ route('PrimaryNavBarChaild', ['page_slug' =>'for-ngos','child_slug'=>'ngo-validation' ])}}">NGO Validation</a></li>
							<li><a href="{{ route('PrimaryNavBarChaild', ['page_slug' =>'for-companies','child_slug'=>'volunteering' ])}}">Volunteer with Us</a></li>
							<li><a href="{{ route('PrimaryNavBar', ['page_slug' => 'events' ])}}">Events</a></li>
						@endif
					</ul>
				@endif
				</div>
			@endforeach

          <div class="col-lg-3 col-md-6 text-right my-4">
            <div style="width: 95%; margin-right: 5%">
              <span class="social-links ml-3">
                <a href="{{ setting('site.facebook-link') }}" target="_blank" class="facebook"><i class="icofont-facebook"></i></a>
                <a href="{{ setting('site.twitter-link') }}" target="_blank" class="twitter"><i class="icofont-twitter"></i></a>
                <a href="{{ setting('site.linkedin-link') }}" target="_blank" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                <a href="{{ setting('site.youtube-link') }}" target="_blank" class="youtube"><i class="icofont-youtube"></i></a>
              </span>
              <div class="footerlink mt-3" style="line-height: 20px;">
                <a class="normal-font" href="{{route("contactUs")}}" >Contact Us</a> | <a href="#" class="normal-font">Sitemap</a><br>
                <a class="normal-font" href="{{route('page',['page_slug'=>'refund-policy'])}}" >Refund Policy</a> | <a href="{{route('page',['page_slug'=>'privacy-and-cookies'])}}" class="normal-font">Privacy Policy</a>
              </div>
              <div class="mt-2" style="color: #fff; line-height: 15px; font-size: small;">
                &copy; {{date("Y")}} {{ setting('site.title') }}. All Right Reserved<br>
                Website Design & Develop By {{ setting('site.title') }}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Modal Subscribe-->
  <div class="modal" id="modalSubscribe">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title tagline" style="color: var(--base-color);">SUBSCRIBE TO OUR NEWSLETTER</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
		@if(Session::has('success'))
				   <div class="alert alert-success">
					 {{ Session::get('success') }}
				   </div>
		@else
		<form action="{{route('subscribe.store')}}" method="post">
			@csrf
			<div class="form-group">
			  <label for="name">Name:</label>
			  <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" value="{{old('name')}}" required>
			</div>
			<div class="form-group">
			  <label for="email">Email:</label>
			  <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="{{old('email')}}" required>
			  <span class="text-danger">{{ $errors->first('email') }}</span>
			</div>
			<button type="submit" class="btn btn-primary donate_btn2">Submit</button>
		  </form>
		  @endif
        </div>
      </div>
    </div>
  </div>
  <!-- Vendor JS Files -->
  <script src="{{ asset('assets/vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/jquery.easing/jquery.easing.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/php-email-form/validate.js') }}"></script>
  <script src="{{ asset('assets/vendor/jquery-sticky/jquery.sticky.js') }}"></script>
  <script src="{{ asset('assets/vendor/venobox/venobox.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/waypoints/jquery.waypoints.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/counterup/counterup.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/owl.carousel/owl.carousel.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/aos/aos.js') }}"></script>

  <!-- Template Main JS File -->
  <script src="{{ asset('assets/js/main.js') }}"></script>

<script> 
	$("nav.nav-menu ul li.parentNav").each(function(key,val){
		if($(this).find("ul li").length==0){
			$(this).removeClass("drop-down");
		}
	});
	$("nav.nav-menu ul li.parentNav ul li.childNav").each(function(key,val){
		if($(this).find("ul li").length==0){
			$(this).removeClass("drop-down");
		}
	});
	@if(Session::has('subscribe') && (Session::has('success') || $errors->first('email')) )
		 $(window).on('load', function() {
			$('#modalSubscribe').modal('show');
		});
	@endif
</script>
@yield('javascript')

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/8.2.5/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.2.5/firebase-messaging.js"></script>

<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyBSE6Yio9aXaC81e-itW3APBI0lGEY4zMo",
    authDomain: "cafindiaweb-b43c8.firebaseapp.com",
    projectId: "cafindiaweb-b43c8",
    storageBucket: "cafindiaweb-b43c8.appspot.com",
    messagingSenderId: "758381815417",
    appId: "1:758381815417:web:8e2fb9415972c8b05856a8",
    measurementId: "G-FPL6M1377C"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);

    const messaging = firebase.messaging();

    function initFirebaseMessagingRegistration() {
            messaging
            .requestPermission()
            .then(function () {
                return messaging.getToken()
            })
            .then(function(token) {
                console.log(token);

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                    url: '{{ route("webfirebase-tokens.save-token") }}',
                    type: 'POST',
                    data: {
                        token: token
                    },
                    dataType: 'JSON',
                    success: function (response) {
                        //alert('Token saved successfully.');
                    },
                    error: function (err) {
                        console.log('User Chat Token Error'+ err);
                    },
                });

            }).catch(function (err) {
                console.log('User Chat Token Error'+ err);
            });
     }

    messaging.onMessage(function(payload) {
        const noteTitle = payload.notification.title;
        const noteOptions = {
            body: payload.notification.body,
            icon: payload.notification.icon,
        };
        new Notification(noteTitle, noteOptions);
    });
   setTimeout(function(){ initFirebaseMessagingRegistration(); },1000);
</script>
</section>
</body>

</html>

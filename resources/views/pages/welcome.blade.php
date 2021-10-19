@extends('master')
@section('content')
<style>
  #hero .home-banner-left {
    flex: 0 0 67.6%;
    max-width: 67.6%;
    margin-right: 0.4%;
  height: 585px;
  }
  #hero .home-banner-right {
    flex: 0 0 32%;
    max-width: 32%;
    height: 585px;
  }
  section#how-can-help{
    padding-top: 30px !important;
  }
  
  @media (max-width:768px) {
      
  #hero .home-banner-left {
    flex: 0 0 100%;
    max-width: 100%;
    margin-right: 0%
  }
  #hero .home-banner-right {
    flex: 0 0 100%;
    max-width: 100%;
  }
  }

</style>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="home-banner-container" >
    <div class="hero-container ">
      <div class="row no-gutters">
        <div class="home-banner-left">
             <div class="herooverlay"></div>
          <div id="heroCarousel" class="carousel slide carousel-fade h-100" data-ride="carousel">
            <div class="row no-gutters h-100">
              <div class="col-12 h-100">
                <div class="carousel-inner h-100" role="listbox">
				  <!-- Slide 1 -->
				  @foreach($banners as $rowKey=>$rowData)
				  <div class="carousel-item h-100 @if($rowKey ==0) active @endif" style="background-image: url('{{ filter_var($rowData->image, FILTER_VALIDATE_URL) ? $rowData->image : Voyager::image( $rowData->image ) }}');">
						<div class="carousel-container">
							<div class="sub_slide2" style="padding-left: 50px;">
                <span class="sub_slide2_title">{{$rowData->title}}</span><br>
								<span class="sub_slide2_description">
								  {{substr($rowData->sub_title,0,255)}} 
								</span><br>           
								@if($rowData->link)<a href="{{$rowData->link}}" target="_blank" class="btn btn-primary donate_btn">{{$rowData->link_text}} <i class="icofont-heart"></i></a>@endif
							</div>
						</div>
					</div>
					@endforeach
					<a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                  <img src="assets/image/prev.png" >
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                  <img src="assets/image/next.png" >
                  <span class="sr-only">Next</span>
                </a>
                  <div class="indicat">
                     
                    <ol class="carousel-indicators2">
                      <li class="active">
                        <div class="thumb">
                          <div class="thumb-icon"><img src="assets/image/cake.png"></div>
                          <div class="thumb-icon-active-1" style="display: none;"><img
                              src="assets/image/cake-active.png"></div>
                          <div class="thumb-text"><span data-toggle="counter-up">20</span> <br> Years</div>
                        </div>
                      </li>
                      <li >
                        <div class="thumb">
                          <div class="thumb-icon"><img src="assets/image/Projects.png"></div>
                          <div class="thumb-icon-active-2" style="display: none;"><img
                              src="assets/image/Projects-active.png"></div>
                          <div class="thumb-text"><span data-toggle="counter-up">2021</span> <br> Projects</div>
                        </div>
                      </li>
                      <li >
                        <div class="thumb">
                          <div class="thumb-icon"><img src="assets/image/States.png"></div>
                          <div class="thumb-icon-active-3" style="display: none;"><img
                              src="assets/image/States-active.png"></div>
                          <div class="thumb-text"><span data-toggle="counter-up">27</span> <br> States</div>
                        </div>
                      </li>
                      <li >
                        <div class="thumb">
                          <div class="thumb-icon"><img src="assets/image/Beneficiaries.png"></div>
                          <div class="thumb-icon-active-4" style="display: none;"><img
                              src="assets/image/Beneficiaries-active.png"></div>
                          <div class="thumb-text"><span data-toggle="counter-up">500</span> <br> Beneficiaries</div>
                        </div>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        
          <!-- slider end -->
        </div>
        <div class="home-banner-right add-padd">
            <a href="{{setting('site.campaigns-link')}}" target="_blank">
          <div class="covid covid-bg w-100 h-100 bg-white" >
            {{-- <div class="covid covid-bg w-100 h-100" style="background:url({{ Voyager::image(setting('site.campaigns-image')) }});   background-size: cover; background-position: bottom right;"> --}}
            <img src="{{ Voyager::image(setting('site.campaigns-image')) }}" width="100%" style="height="100%" />
              <!--<div class="herooverlay" style="left:5px !important;"></div>
              <a href="{{setting('site.campaigns-link')}}" target="_blank"><img src="{{ Voyager::image(setting('site.campaigns-image')) }}" alt="Campaigns"></a>
              </div>-->
        </div>
        </a>
      </div>

    </div>
  </section><!-- End Hero -->
  <main id="main">
    <section id="how-can-help">
      <div class="container-no">
        <div class="row" style="padding-left: 100px; padding-right:100px;">
          <div class="col-lg-12">
            <h3 class="heading_d border-0">how can we help you ?</h3>
            <div class="row mt-3">
              @foreach($featureds as $rowKey=>$rowData)
                <?php
                  if( $rowData->category && $rowData->category->category_parent && $rowData->category->category_parent->category_parent ){
                    $route = route('PrimaryNavBarSubChild', ['page_slug' => $rowData->category->category_parent->category_parent->slug,'child_slug'=>$rowData->category->category_parent->slug,'sub_child_slug'=>$rowData->category->slug ]);
                  }else if( $rowData->category && $rowData->category->category_parent ){
                    $route = route('PrimaryNavBarChaild', ['page_slug' => $rowData->category->category_parent->slug,'child_slug'=>$rowData->category->slug ]);
                  }else{
                    $route = route('PrimaryNavBar', ['page_slug' => $rowData->category->slug ]);
                  }
                ?>
                <div class="col-lg-3 howhelp">
                  <a title="{{$rowData->category->name}}" href="{{ $route }}" class="hwcanhelp play-btn mb-4 over_text">
                    <div class="base-img">
                      <img src="{{Voyager::image( 'thumb-'.$rowData->image )}}" class="img-fluid" alt="{{$rowData->title}}" />
                    </div>
                    <div class="hpsec text-overlay{{$rowKey+1}}">
                      <div class="row">
                        <div class="col-8 pr-0">
                          <div  style="font-weight: bold; padding-left: 10px;">
                            @if ($rowData->category->name == 'For NGO' || $rowData->category->name == 'For NGOs' || str_contains ($rowData->category->name , 'For NGO') )
                                NGOs
                            @else
                            {{ $rowData->category->name}}
                            @endif

                          </div>
                        </div>
                        <div class="col-4">
                          <div class="hpicon over_icon{{$rowKey+1}}">
                            @if($rowData->category->image)<img src="{{Voyager::image($rowData->category->image )}}">@endif
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="how-can-help" style="margin-top:8px;">
      <div class="container-no">
        <div class="row" style="margin-right: 0px; padding-left:100px;">
          <div class="col-lg-7">
            <h3 class="heading_d" style="margin-top:1px !important;">Get Involved</h3>
            <p style="font-size: large">You can actively be a part of our quest to <b style="color:#d24508">#MakeGivingCount</b>. 
            </p>
            <div class="row get_in">
              <div class="col-lg-4 text-center get_in_item">
                <div class="getinv-icon">
                  <a href="">
                    <div class="icon_inner">
                      <img src="assets/image/get-involved01.png">
                    </div>
                  </a>
                </div>
                <div class="dots"><span style="color: var(--base-color);">.</span>..........<span
                    style="color: var(--base-color);">.</span></div>
                <a href="">
                  <div class="icon_text" style="font-family: GothamBlack; color: var(--base-gray)"><span style="color:#298da4">Disaster</span> <br>Response</div>
                </a>
              </div>
              
              <div class="col-lg-4 text-center get_in_item">
                <div class="getinv-icon">
                  <a href="https://cafindia.jaisalmercity.com/for-companies/volunteering">
                    <div class="icon_inner">
                      <img src="assets/image/home-volunteering.png">
                    </div> 
                  </a>
                </div>
                <div class="dots"><span style="color: var(--base-color);">.</span>..........<span
                    style="color: var(--base-color);">.</span></div>
                <a href="https://cafindia.jaisalmercity.com/for-companies/volunteering">
                  <div class="icon_text" style="font-family: GothamBlack; color: var(--base-gray)"><span style="color:#298da4">Volunteering</span><br></div>
                </a>
              </div>
              <div class="col-lg-4 text-center get_in_item">
                <div class="getinv-icon">
                  <a href="https://cafindia.jaisalmercity.com/register">
                    <div class="icon_inner">
                      <img src="assets/image/get-involved02.png">
                    </div>
                  </a>
                </div>
                <div class="dots"><span style="color: var(--base-color);">.</span>..........<span
                    style="color: var(--base-color);">.</span></div>
                <a href="https://cafindia.jaisalmercity.com/register">
                    <div class="icon_text" style="font-family: GothamBlack; color: var(--base-gray)"><span style="color:#298da4">NGO</span><br> Registration</div>
                </a>
              </div>
              {{--<div class="col-lg-4 text-center get_in_item">
                <div class="getinv-icon">
                  <div class="icon_inner">
                    <img src="assets/image/get-involved03.png">
                  </div>
                </div>
                <div class="dots"><span style="color: var(--base-color);">.</span>..........<span
                    style="color: var(--base-color);">.</span></div>
                <div class="icon_text"><span style="color:#298da4">Payroll</span><br> Giving</div>
              </div>--}}
            </div>
          </div>
          <div class="col-lg-5 involved-slider" style="padding-right: 0px;">
            <div class="inn_inner">
              <section id="hero2">
                <div class="hero-container">
                  <div class="row">
                    <div class="col-md-12">
                      <div id="heroCarousel2" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                          <!-- Slide 1 -->
                          @foreach($right_banners as $rowKey=>$rowData)
                            <div class="carousel-item @if($rowKey ==0) active @endif" style="background-image: url('{{ filter_var($rowData->image, FILTER_VALIDATE_URL) ? $rowData->image : Voyager::image( $rowData->image ) }}');">
                              <div class="carousel-container">
                                <div class="sub_slide">
                                <h4>{{$rowData->title}}</h4>
                                  <h2>
                                    {{substr($rowData->sub_title,0,255)}} 
                                  </h2>         
                                  @if($rowData->link)<a href="{{$rowData->link}}" target="_blank" class="btn btn-primary donate_btn2">{{$rowData->link_text}} <i class="icofont-heart"></i></a>@endif
                                </div>
                              </div>
                            </div>
                          @endforeach
                        </div>
                      
                        <ol class="carousel-indicators rightsliderX" id="hero-carousel-indicators2">
                            <li data-target="#heroCarousel2" data-slide-to="0" class="active"></li>
                            <li data-target="#heroCarousel2" data-slide-to="1"></li>
                        </ol>
                         
                      </div>
                      <!-- slider end -->
                    </div>
                  </div>
  
                </div>
              </section><!-- End Hero -->
            </div>            
          </div>
        </div>
      </div>
    </section>
    <section class="donatenow section-bg" style="margin-top: 25px;">
      <div class="container">
        <div class="row  d-flex align-items-stretch">

          <div class="col-lg-12 text-center mt-3" data-aos="fade-up">
            <h4 class="heading_d border-0">Donate to a charity</h4>
            <h3>Join our mailing list. Keep abreast with the latest news on giving in India..</h3>
            {{-- <h3>Find causes that matter to you and donate now.</h3> --}}

            <div class="footer-newsletter">
              @if(Session::has('success'))
				   <div class="alert alert-success">
					 {{ Session::get('success') }}
				   </div>
				@endif
				<span class="text-danger">{{ $errors->first('email') }}</span>
				<form action="{{route('subscribe.store')}}" method="post"> 
					@csrf
					<input placeholder="Enter email" type="email" name="email" value="{{old('email')}}" required>
					<input type="submit" value="Subscribe">
				</form>
				{{-- <span class="text-danger">{{ $errors->first('search') }}</span>
				<form action="{{ route('search') }}" method="post"> 
					@csrf
					<input placeholder="Search by name, number or keyword" type="text" name="search" value="{{old('search')}}" required>
					<input type="submit" value="Search">
				</form> --}}

            </div>
          </div>

        </div>

      </div>
    </section>
    <div class="container-fluid" style="background-color: #f2f2f2;">
      <div style="height: 36px;"></div>
      <div class="container-no media-section">
        <div class="row" style="padding-left: 100px; padding-right:100px;" >
          <div class="col-md-5" >
            <img src="assets/image/media-icon.png" width="40"> <span class="s_heading">Media</span>
            <div>
              <div class="mt-3">
                <iframe width="100%" height="272" src="https://www.youtube.com/embed/yz91aZYPvP8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
              </div>
              <hr>
              <h6 style="font-weight: bold; font-size: smaller; color: #444">
                MITIGATING COVID-19 - A Joint Effort By CAF India|RioTinto|Sakshi
              </h6>
              <p style="font-size: smaller;">As a part of the <span style="font-weight: bold; color: #444">#FightAgainstCovid-19</span> CAF India joined hands with Rio Tinto and Sakshi CEC.
              </p>
            </div>
          </div>
          <div class="col-md-4">
            <img src="assets/image/blog.png" width="40"> <span class="s_heading">Recent Blogs</span>
            <div class="mt-3">
            @foreach($blogs as $rowKey=>$rowData)
              <div class="row no-gutters {{$rowKey >0?'mt-3':''}}">
                <div class="col-5"><img src="{{Voyager::image($rowData->author->image )}}" alt="">
                  <div class="blogname" style="line-height: 12px;">
                    <span  style="font-weight: bold; font-size: small; color: #444;">
                      {{$rowData->author->name}} <br>
                    </span>
                    <span class="role" style="font-size: smaller;">{{$rowData->author->designation}}</span>
                  </div>
                </div>
                <div class="col-7">
                    <!-- ======= title="{{$rowData->title}}" title="{{strip_tags($rowData->body)}}"======= -->
                  {{-- <div class="headingn" >{{ mb_strlen( strip_tags($rowData->title) ) > 21 ? mb_substr(strip_tags($rowData->title), 0, 21) . ' ...' : strip_tags($rowData->title) }}</div> --}}
                  <div class="headingn" >{{ $rowData->title }}</div>
                  {{-- <p class="blog_congtent" style="font-size: smaller;  text-align: justify" >{!! mb_strlen( strip_tags($rowData->body) ) > 140 ? mb_substr(strip_tags($rowData->body), 0, 140) . ' ...' : strip_tags($rowData->body) !!} --}}
                  <div >
                    <div class="blog_congtent text" style="font-size: smaller;  text-align: justify">{!! $rowData->body !!}</div> 
                    <a style="padding-left: 10px;" href="{{route('blog.details',['slug'=>$rowData->slug])}}">READ MORE</a>
                  </div>
                </div>
              </div>
            @endforeach
            </div>
          </div>
          <div class="col-md-3">
            <img src="assets/image/comment.png" width="40"> <span class="s_heading">Social Connect</span>
            <div class="mt-3">
              <nav style="background: #fff">
                <div class="nav nav-tabs nav-fill" style="border-bottom: none" id="nav-tab" role="tablist">
                  <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home"
                    role="tab" aria-controls="nav-home" aria-selected="true">Twitter</a>
                  <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
                    aria-controls="nav-profile" aria-selected="false">Facebook</a>                      
                </div>
              </nav>
              <div class="tab-content px-3 px-sm-0" id="nav-tabContent"  style="background: #fff">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                  <a class="twitter-timeline" data-height="360" href="https://twitter.com/CAFIndia_tweets?ref_src=twsrc%5Etfw">Tweets by CAFIndia_tweets</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                  <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FCAFIndia%2F&tabs=timeline&width=280&height=360&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" height="360" style="border:none;overflow:hidden; width: 100% !important;" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                </div>                    
              </div>
            </div>
          </div>
        </div>
      </div>
      <div style="height: 36px;"></div>
    </div>
    <div class="container-no my-4">
      <div class="contact">
        <div class="row" style="padding-left: 100px; padding-right:100px;">
          <div class="col-lg-8" data-aos="fade-up">
            <h2 class="donate_section mb-0">Contact Us</h2>
            <p class="m-0">
              If you still have questions, or want to know more about CAF India, we'd love to hear from you.
            </p>
          </div>
          <div class="col-lg-4 text-right d-flex justify-content-end" data-aos="fade-up">
            <a href="{{route('contactUs')}}" class="btn btn-primary get_in_touch_btn align-self-center">Get in touch</a>
          </div>
       </div>
      </div>
    </div>
  </main><!-- End #main -->

@endsection

@section('javascript')
<script>
  $(function(){
    $('.carousel-indicators2').find('li').mouseover(function(){
      $('.carousel-indicators2 li').removeClass('active');
      $(this).addClass('active');
    });
  });
</script>
@endsection
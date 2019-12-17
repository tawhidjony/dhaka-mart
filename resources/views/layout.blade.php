<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | DhakaMart</title>
    <link href="{{asset('frontend/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/animate.css')}}" rel="stylesheet">
	<link href="{{asset('frontend/css/main.css')}}" rel="stylesheet">
	<link href="{{asset('frontend/css/responsive.css')}}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><p style="  font-size: 18px; color: red;padding-top: 10px; "> অর্ডার করতে কল করুন &nbsp;&nbsp;<i class="fa fa-phone"></i> +8801729424124</p></li>
								<!-- <li><a href="#"><i class="fa fa-envelope"></i> </a></li> -->
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="https://www.facebook.com/dhakamart.net"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube"></i></a></li>
								
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="{{URL::to('/')}}"><img src="{{URL::to('frontend/images/home/logo.png')}}" alt="" /></a>
						</div>
						
					</div>
					
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<!-- <li><a href="#"><i class="fa fa-user"></i> Account</a></li>
								<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li> -->

							<?php $customer_id=Session::get('customer_id');
                  				$shipping_id=Session::get('shipping_id');
               				 ?>

								<?php if($customer_id ==NULL && $shipping_id==NULL){?>
                            <li><a href="{{URL::to('/login-check')}}"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                        <?php }if($customer_id !=NULL && $shipping_id==NULL){?>
                              <li><a href="{{URL::to('/checkout')}}">Checkout</a></li>
                        <?php }if($customer_id !=NULL && $shipping_id!=NULL){?>
                               <li><a href="{{URL::to('/payment')}}">Checkout</a></li>
                        <?php }else{}?>


                                <li><a href="{{URL::to('/show-cart')}}"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                           
                           
                          
                            <?php if($customer_id != NULL){?>
                                <li><a href="{{URL::to('/customer_logout')}}"><i class="fa fa-lock"></i> Logout</a></li>
                          <?php  }else{?>
                            
                                <li><a href="{{URL::to('/login-check')}}"><i class="fa fa-lock"></i> Login</a></li>
                          <?php } ?>


							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->

			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="{{URL::to('/')}}" class="active">Home</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <!-- <li><a href="shop.html">Products</a></li>
										<li><a href="product-details.html">Product Details</a></li> --> 
										<li><a href="{{URL::to("/login-check")}}">Checkout</a></li> 
										<li><a href="{{URL::to("/show-cart")}}">Cart</a></li> 
										
                                    </ul>
                                </li> 
								<!-- <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> --> 
								<!-- <li><a href="404.html">404</a></li>
								<li><a href="contact-us.html">Contact</a></li> -->
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	@yield('slider')
	
	<section>
		<div class="container">
			
			<div class="row">
				<div class="col-sm-3" style="">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								
								<?php 
								$all_published_category=DB::table('tbl_category')
														->where('publication_status',1)
														->get();

								foreach ($all_published_category as $v_category) {?>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a href="{{URL::to('/product_by_category/'.$v_category->category_id)}}">{{$v_category->category_name}}</a></h4>
										</div>
									</div>
								<?php } ?>	
							</div><!--/category-products-->
						</div>
						<div class="brands_products"><!--brands_products-->
                            <h2>Brands</h2>
                            <div class="brands-name">
                                <ul class="nav nav-pills nav-stacked">
                         <?php
                           $all_published_manufacture=DB::table('tbl_manufacture')
                                                  ->where('publication_status',1)
                                                  ->get();
                            foreach($all_published_manufacture as $v_manufacture){?> 

                                    <li><a href="{{URL::to('/product_by_manufacture/'.$v_manufacture->manufacture_id)}}"> <span class="pull-right"></span>{{$v_manufacture->manufacture_name}}</a></li>
                         <?php } ?>   
                                </ul>
                            </div>
                        </div><!--/brands_products-->
						
						
					
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						@yield('content')
						
		            </div>
			</section>


			
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<!-- <div class="col-sm-3">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">Online Help</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Order Status</a></li>
								<li><a href="#">Change Location</a></li>
								<li><a href="#">FAQ’s</a></li>
							</ul>
						</div>
					</div> -->
					<div class="col-sm-3">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">SNACKS PRODUCTS</a></li>
								<li><a href="#">BEVERAGE PRODUCTS</a></li>
								<li><a href="#">BREAKFAST PRODUCTS</a></li>
								<li><a href="#">COOKING PRODUCTS</a></li>
								<li><a href="#">ORGANIC PRODUCTS</a></li>
								
							</ul>
						</div>
					</div>
					
					<div class="col-sm-3">
						<div class="single-widget">
							
						</div>
					</div>
					<div class="col-sm-1">
						<div class="single-widget">
							
						</div>
					</div>
					<div class="col-sm-5">
						<div class="single-widget">
							<h1>About Dhakamart</h1>

							<P>House No: #655 Road No:#10 Avenue #04 Mirpur DOHS, Dhaka-1216</P>
							<p>Mobile:+8801729424124</p>
							<img src="{{URL::to('frontend/dhaka.png')}}">
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2018 Eurosia IT Inc. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="{{asset('frontend/js/jquery.js')}}"></script>
	<script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('frontend/js/jquery.scrollUp.min.js')}}"></script>
	<script src="{{asset('frontend/js/price-range.js')}}"></script>
    <script src="{{asset('frontend/js/jquery.prettyPhoto.js')}}"></script>
    <script src="{{asset('frontend/js/main.js')}}"></script>
</body>
</html>
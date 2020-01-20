<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!doctype html>
<html class="no-js" lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Koparion – Book Shop HTML5 Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="/goodibooks/resources/img/favicon.png">

	<!-- all css here -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />
		
    <script src="/goodibooks/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    
</head>

<body class="home-4">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!-- header-area-start -->
	<header>
		
		<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />
		
		
	</header>
	<!-- header-area-end -->
	<!-- slider-group-start -->
	<div class="slider-group  mt-30">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-12 col-12">
					<!-- slider-area-start -->
					<div class="slider-area">
						<div class="slider-active owl-carousel">
							<div class="single-slider slider-hm4-1 pt-154 pb-154 bg-img" style="background-image:url(resources/img/slider/7.jpg);">
								<div class="slider-content-4 slider-animated-1 pl-40">
									<h1>Sale up to 30% off</h1>
									<h2>Books in Store</h2>
									<a href="#">Shopping now!</a>
								</div>
							</div>
							<div class="single-slider pt-154 pb-154 bg-img" style="background-image:url(resources/img/slider/8.jpg);">
								<div class="slider-content-4 slider-animated-1 pl-40">
									<h1>Sale up to 30% off</h1>
									<h2>Books in Order</h2>
									<a href="#">Shopping now!</a>
								</div>
							</div>
						</div>
					</div>
					<!-- slider-area-end -->
				</div>
				<div class="col-lg-3 col-md-12 col-12">
					<!-- banner-static-2-start -->
					<div class="banner-static-2">
						<div class="row">
							<div class="col-lg-12 col-md-6 col-12">
								<div class="banner-img-2">
									<a href="#"><img src="/goodibooks/resources/img/banner/20.jpg" alt="banner" /></a>
								</div>
							</div>
							<div class="col-lg-12 col-md-6 col-12">
								<!-- banner-area-3-start -->
								<div class="banner-area-3">
									<div class="row">
										<div class="col-12">
											<!-- single-banner-2-start -->
											<div class="single-banner-2 mt-16">
												<div class="single-icon-2">
													<a href="#">
														<img class="service-blue-img" src="/goodibooks/resources/img/icon-img/service-1.png" alt="banner" />
														<img class="service-white-img" src="/goodibooks/resources/img/icon-img/service-1-white.png" alt="banner" />
													</a>
												</div>
												<div class="single-text-2">
													<h2>Free shipping item</h2>
													<p>For all orders over $500</p>
												</div>
											</div>
											<!-- single-banner-2-end -->
										</div>
										<div class="col-12">
											<!-- single-banner-2-start -->
											<div class="single-banner-2 mt-16">
												<div class="single-icon-2">
													<a href="#">
														<img class="service-blue-img" src="/goodibooks/resources/img/icon-img/service-2.png" alt="banner" />
														<img class="service-white-img" src="/goodibooks/resources/img/icon-img/service-2-white.png" alt="banner" />
													</a>
												</div>
												<div class="single-text-2">
													<h2>Money back guarante</h2>
													<p>100% money back guarante</p>
												</div>
											</div>
											<!-- single-banner-2-end -->
										</div>
										<div class="col-12">
											<!-- single-banner-2-start -->
											<div class="single-banner-2 mt-16">
												<div class="single-icon-2">
													<a href="#">
														<img class="service-blue-img" src="/goodibooks/resources/img/icon-img/service-3.png" alt="banner" />
														<img class="service-white-img" src="/goodibooks/resources/img/icon-img/service-3-white.png" alt="banner" />
													</a>
												</div>
												<div class="single-text-2">
													<h2>Cash on delivery</h2>
													<p>Lorem ipsum dolor amet</p>
												</div>
											</div>
											<!-- single-banner-2-end -->
										</div>
									</div>
								</div>
								<!-- banner-area-3-end -->
							</div>
						</div>

					</div>
					<!-- banner-static-2-end -->
				</div>
			</div>
		</div>
	</div>
	<!-- slider-group-end -->
	
	<!-- home-main-area-start -->
	<div class="home-main-area mt-30">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-12">
					<!-- category-area-start -->
					<div class="category-area mb-30">
						<h3><a href="#">Category Menu <i class="fa fa-bars"></i></a></h3>
						<div class="category-menu">
							<nav class="menu">
								<ul>
									<li class="cr-dropdown"><a href="#">Book<i class="none-lg fa fa-angle-down"></i><i class="none-sm fa fa-angle-right"></i></a>
										<div class="left-menu">
											<span class="mb-30">
												<a href="#" class="title">Jackets</a>
												<a href="/goodibooks/book/list.action">Tops & Tees</a>
												<a href="#">Polo Short Sleeve</a>
												<a href="#">Graphic T-Shirts</a>
												<a href="#">Jackets & Coats</a>
												<a href="#">Fashion Jackets</a>
											</span>
											<span class="mb-30">
												<a href="#" class="title">Bottoms</a>
												<a href="#">Heeled sandals</a>
												<a href="#">Polo Short Sleeve</a>
												<a href="#">Flat sandals</a>
												<a href="#">Short Sleeve</a>
												<a href="#">Long Sleeve</a>
											</span>
											<span>
												<a href="#" class="title">weaters</a>
												<a href="#">Crochet</a>
												<a href="#">Sleeveless</a>
												<a href="#">Stripes</a>
												<a href="#">Sweaters</a>
												<a href="#">hoodies</a>
											</span>
											<span>
												<a href="#" class="title">Jeans Pants</a>
												<a href="#">Polo Short Sleeve </a>
												<a href="#">Sleeveless</a>
												<a href="#">Graphic T-Shirts</a>
												<a href="#">Hoodies</a>
												<a href="#">Jackets</a>
											</span>
										</div>
										<ul>
											<li class="cr-sub-dropdown sub-style"><a href="#">Jackets <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-grid-2-col.html">Tops & Tees</a></li>
													<li><a href="shop-grid-3-col.html">Polo Short Sleeve</a></li>
													<li><a href="shop.html">Graphic T-Shirts</a></li>
													<li><a href="shop-grid-6-col.html">Jackets & Coats</a></li>
													<li><a href="shop-grid-box.html">Fashion Jackets</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">Bottoms <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-list.html">Heeled sandals</a></li>
													<li><a href="shop-list.html">Polo Short Sleeve</a></li>
													<li><a href="shop-list-2-col.html">Flat sandals</a></li>
													<li><a href="shop-list-3-col.html">Short Sleeve</a></li>
													<li><a href="shop-list-box.html">Long Sleeve</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">weaters <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="product-details.html">Sleeveless</a></li>
													<li><a href="product-details-sticky.html">Stripes</a></li>
													<li><a href="product-details-gallery.html">Sweaters</a></li>
													<li><a href="product-details-fixed-img.html">hoodies</a></li>
													<li><a href="product-details-fixed-img.html">Crochet</a></li>
													<li><a href="product-details-fixed-img.html">weaters</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">Jeans Pants <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop.html">Sleeveless</a></li>
													<li><a href="shop.html">Graphic T-Shirts</a></li>
													<li><a href="shop.html">Hoodies</a></li>
													<li><a href="shop.html">Jackets</a></li>
													<li><a href="shop.html">Polo Short Sleeve</a></li>
													<li><a href="shop.html">Jeans Pants</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li class="cr-dropdown"><a href="#">Audio books<i class="none-lg fa fa-angle-down"></i><i class="none-sm fa fa-angle-right"></i></a>
										<div class="left-menu">
											<span class="mb-30">
												<a href="#" class="title">Shirts</a>
												<a href="#">Tops & Tees</a>
												<a href="#">Sweaters</a>
												<a href="#">Hoodies</a>
												<a href="#">Jackets & Coats</a>
											</span>
											<span class="mb-30">
												<a href="#" class="title">Jackets</a>
												<a href="#">Sweaters</a>
												<a href="#">Hoodies</a>
												<a href="#">Wedges</a>
												<a href="#">Vests</a>
											</span>
											<span>
												<a href="#" class="title">Tops & Tees</a>
												<a href="#">Long Sleeve </a>
												<a href="#">Short Sleeve</a>
												<a href="#">Polo Short Sleeve</a>
												<a href="#">Sleeveless</a>
											</span>
											<span>
												<a href="#" class="title">Jeans pants</a>
												<a href="#">Polo Short Sleeve</a>
												<a href="#">Sleeveless</a>
												<a href="#">Graphic T-Shirts</a>
												<a href="#">Hoodies</a>
											</span>
										</div>
										<ul>
											<li class="cr-sub-dropdown sub-style"><a href="#">Jackets <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-grid-2-col.html">Tops & Tees</a></li>
													<li><a href="shop-grid-3-col.html">Polo Short Sleeve</a></li>
													<li><a href="shop.html">Graphic T-Shirts</a></li>
													<li><a href="shop-grid-6-col.html">Jackets & Coats</a></li>
													<li><a href="shop-grid-box.html">Fashion Jackets</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">Bottoms <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-list.html">Heeled sandals</a></li>
													<li><a href="shop-list.html">Polo Short Sleeve</a></li>
													<li><a href="shop-list-2-col.html">Flat sandals</a></li>
													<li><a href="shop-list-3-col.html">Short Sleeve</a></li>
													<li><a href="shop-list-box.html">Long Sleeve</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">weaters <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="product-details.html">Sleeveless</a></li>
													<li><a href="product-details-sticky.html">Stripes</a></li>
													<li><a href="product-details-gallery.html">Sweaters</a></li>
													<li><a href="product-details-fixed-img.html">hoodies</a></li>
													<li><a href="product-details-fixed-img.html">Crochet</a></li>
													<li><a href="product-details-fixed-img.html">weaters</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">Jeans Pants <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop.html">Sleeveless</a></li>
													<li><a href="shop.html">Graphic T-Shirts</a></li>
													<li><a href="shop.html">Hoodies</a></li>
													<li><a href="shop.html">Jackets</a></li>
													<li><a href="shop.html">Polo Short Sleeve</a></li>
													<li><a href="shop.html">Jeans Pants</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li class="cr-dropdown"><a href="#">children’s books<i class="none-lg fa fa-angle-down"></i><i class="none-sm fa fa-angle-right"></i></a>
										<div class="left-menu">
											<span class="mb-30">
												<a href="#" class="title">Tops</a>
												<a href="#">Shirts</a>
												<a href="#">Florals</a>
												<a href="#">Crochet</a>
												<a href="#">Stripes</a>
											</span>
											<span class="mb-30">
												<a href="#" class="title">Bottoms</a>
												<a href="#">Shoes</a>
												<a href="#">Heeled sandals</a>
												<a href="#">Flat sandals</a>
												<a href="#">Wedges</a>
											</span>
											<span>
												<a href="#" class="title">Shorts</a>
												<a href="#">Dresses</a>
												<a href="#">Trousers</a>
												<a href="#">Jeans</a>
											</span>
										</div>
										<ul>
											<li class="cr-sub-dropdown sub-style"><a href="#">Jackets <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-grid-2-col.html">Tops & Tees</a></li>
													<li><a href="shop-grid-3-col.html">Polo Short Sleeve</a></li>
													<li><a href="shop.html">Graphic T-Shirts</a></li>
													<li><a href="shop-grid-6-col.html">Jackets & Coats</a></li>
													<li><a href="shop-grid-box.html">Fashion Jackets</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">Bottoms <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-list.html">Heeled sandals</a></li>
													<li><a href="shop-list.html">Polo Short Sleeve</a></li>
													<li><a href="shop-list-2-col.html">Flat sandals</a></li>
													<li><a href="shop-list-3-col.html">Short Sleeve</a></li>
													<li><a href="shop-list-box.html">Long Sleeve</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">weaters <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="product-details.html">Sleeveless</a></li>
													<li><a href="product-details-sticky.html">Stripes</a></li>
													<li><a href="product-details-gallery.html">Sweaters</a></li>
													<li><a href="product-details-fixed-img.html">hoodies</a></li>
													<li><a href="product-details-fixed-img.html">Crochet</a></li>
													<li><a href="product-details-fixed-img.html">weaters</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li class="cr-dropdown"><a href="#">bussiness & money<i class="none-lg fa fa-angle-down"></i><i class="none-sm fa fa-angle-right"></i></a>
										<div class="left-menu">
											<span>
												<a href="#" class="title">Rings</a>
												<a href="#">Coats & Jackets</a>
												<a href="#">Blazers</a>
												<a href="#">Jackets</a>
												<a href="#">Raincoats</a>
												<a href="#">Trousers</a>
											</span>
											<span>
												<a href="#" class="title">Trousers</a>
												<a href="#">Joggers</a>
												<a href="#">Casual</a>
												<a href="#">Chinos</a>
												<a href="#">Tailored</a>
												<a href="#">Jeans</a>
											</span>
										</div>
										<ul>
											<li class="cr-sub-dropdown sub-style"><a href="#">Jackets <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-grid-2-col.html">Tops & Tees</a></li>
													<li><a href="shop-grid-3-col.html">Polo Short Sleeve</a></li>
													<li><a href="shop.html">Graphic T-Shirts</a></li>
													<li><a href="shop-grid-6-col.html">Jackets & Coats</a></li>
													<li><a href="shop-grid-box.html">Fashion Jackets</a></li>
												</ul>
											</li>
											<li class="cr-sub-dropdown sub-style"><a href="#">Bottoms <i class="fa fa-angle-down"></i></a>
												<ul>
													<li><a href="shop-list.html">Heeled sandals</a></li>
													<li><a href="shop-list.html">Polo Short Sleeve</a></li>
													<li><a href="shop-list-2-col.html">Flat sandals</a></li>
													<li><a href="shop-list-3-col.html">Short Sleeve</a></li>
													<li><a href="shop-list-box.html">Long Sleeve</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li><a href="#">usedbooks</a></li>
									<li><a href="#">sales off</a></li>
									<li><a href="#">Biographies</a></li>
									<li><a href="#">Cookbooks</a></li>
									<li><a href="#">Education</a></li>
									<li><a href="#">Engineering</a></li>
									<li class="rx-child"><a href="shop.html">Health, Fitness</a></li>
									<li class="rx-parent">
										<a class="rx-default">
											<span class="cat-thumb fa fa-plus"></span>
											More categories
										</a>
										<a class="rx-show">
											<span class="cat-thumb fa fa-minus"></span>
											close menu
										</a>
									</li>
								</ul>
							</nav>
						</div>
					</div>
					<!-- category-area-end -->
					<!-- banner-area-start -->
					<div class="banner-area mb-30">
						<div class="banner-img-2">
							<a href="#"><img src="/goodibooks/resources/img/banner/21.jpg" alt="banner" /></a>
						</div>
					</div>
					<!-- banner-area-end -->
					
					
					<!-- most-product-area-start 
					<div class="most-product-area mb-30">
						<div class="section-title-2 mb-30">
							<h3>Trending Products </h3>
						</div>
						<div class="product-active-2 owl-carousel">
							<div class="product-total-2">
								<div class="single-most-product bd mb-18">
									<div class="most-product-img">
										<a href="#"><img src="/goodibooks/resources/img/product/20.jpg" alt="book" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="#">Endeavor Daytrip</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$33.00</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="single-most-product bd mb-18">
									<div class="most-product-img">
										<a href="#"><img src="/goodibooks/resources/img/product/21.jpg" alt="book" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="#">Savvy Shoulder Tote</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$35.00</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="single-most-product">
									<div class="most-product-img">
										<a href="#"><img src="/goodibooks/resources/img/product/22.jpg" alt="book" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="#">Compete Track Tote</a></h4>
										<div class="product-price">
											<ul>
												<li>$35.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="product-total-2">
								<div class="single-most-product bd mb-18">
									<div class="most-product-img">
										<a href="#"><img src="/goodibooks/resources/img/product/23.jpg" alt="book" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="#">Voyage Yoga Bag</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$33.00</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="single-most-product bd mb-18">
									<div class="most-product-img">
										<a href="#"><img src="/goodibooks/resources/img/product/24.jpg" alt="book" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="#">Impulse Duffle</a></h4>
										<div class="product-price">
											<ul>
												<li>$70.00</li>
												<li class="old-price">$74.00</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="single-most-product">
									<div class="most-product-img">
										<a href="#"><img src="/goodibooks/resources/img/product/22.jpg" alt="book" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="#">Fusion Backpack</a></h4>
										<div class="product-price">
											<ul>
												<li>$59.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					 most-product-area-end -->
					
					
					
					<!-- recent-post-area-start 
					<div class="recent-post-area mb-30">
						<div class="section-title-2 mb-30">
							<h3>Recent Posts </h3>
						</div>
						<div class="post-active-2 owl-carousel">
							<div class="single-post">
								<div class="post-img">
									<a href="#"><img src="/goodibooks/resources/img/post/1.jpg" alt="post" /></a>
									<div class="blog-date-time">
										<span class="day-time">06</span>
										<span class="moth-time">Dec</span>
									</div>
								</div>
								<div class="post-content">
									<h3><a href="#">The History and the Hype</a></h3>
									<span class="meta-author"> Demo koparion </span>
									<p>Discover five of our favourite dresses from our new collection that are destined to be worn and loved immediately.</p>
								</div>
							</div>
							<div class="single-post">
								<div class="post-img">
									<a href="#"><img src="/goodibooks/resources/img/post/2.jpg" alt="post" /></a>
									<div class="blog-date-time">
										<span class="day-time">07</span>
										<span class="moth-time">Dec</span>
									</div>
								</div>
								<div class="post-content">
									<h3><a href="#">Answers to your Questions</a></h3>
									<span class="meta-author"> Demo koparion </span>
									<p>Discover five of our favourite dresses from our new collection that are destined to be worn and loved immediately.</p>
								</div>
							</div>
							<div class="single-post">
								<div class="post-img">
									<a href="#"><img src="/goodibooks/resources/img/post/3.jpg" alt="post" /></a>
									<div class="blog-date-time">
										<span class="day-time">08</span>
										<span class="moth-time">Dec</span>
									</div>
								</div>
								<div class="post-content">
									<h3><a href="#">What is Bootstrap?</a></h3>
									<span class="meta-author"> Demo koparion </span>
									<p>Discover five of our favourite dresses from our new collection that are destined to be worn and loved immediately.</p>
								</div>
							</div>
							<div class="single-post">
								<div class="post-img">
									<a href="#"><img src="/goodibooks/resources/img/post/4.jpg" alt="post" /></a>
									<div class="blog-date-time">
										<span class="day-time">09</span>
										<span class="moth-time">Dec</span>
									</div>
								</div>
								<div class="post-content">
									<h3><a href="#">Etiam eros massa</a></h3>
									<span class="meta-author"> Demo koparion </span>
									<p>Discover five of our favourite dresses from our new collection that are destined to be worn and loved immediately.</p>
								</div>
							</div>
						</div>
					</div>
					<!-- recent-post-area-end -->
					<!-- block-newsletter-area-start
					<div class="block-newsletter">
						<h2>Sign up for send newsletter</h2>
						<p>You can be always up to date with our company new!</p>
						<form action="#">
							<input type="text" placeholder="Enter your email address" />
						</form>
						<a href="#">Send Email</a>
					</div>
					block-newsletter-area-end -->
					
					
				</div>
				<div class="col-lg-9 col-md-8 col-12">
					<!-- banner-area-5-start -->
					<div class="banner-area-5">
						<div class="single-banner-4 xs-mb">
							<div class="banner-img-2">
								<a href="#"><img src="/goodibooks/resources/img/banner/24.jpg" alt="banner" /></a>
							</div>
						</div>
						<div class="single-banner-5">
							<div class="banner-img-2">
								<a href="#"><img src="/goodibooks/resources/img/banner/23.jpg" alt="banner" /></a>
							</div>
						</div>
					</div>
					<!-- banner-area-5-end -->
					<!-- new-book-area-start -->
					<div class="new-book-area ptb-50">
						<div class="section-title-2 mb-30">
							<h3>New Arrivals</h3>
						</div>
						<div class="tab-active-3 owl-carousel">
							<div class="tab-total">
								<!-- single-product-start -->
								<div class="product-wrapper mb-40">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/1.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Joust Duffle Bag</a></h4>
										<div class="product-price">
											<ul>
												<li>$60.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/18.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Driven Backpack</a></h4>
										<div class="product-price">
											<ul>
												<li>$34.00</li>
												<li class="old-price">$36.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
							</div>
							<div class="tab-total">
								<!-- single-product-start -->
								<div class="product-wrapper mb-40">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/3.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Chaz Kangeroo Hoodie</a></h4>
										<div class="product-price">
											<ul>
												<li>$52.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/10.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Fusion Backpack</a></h4>
										<div class="product-price">
											<ul>
												<li>$59.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
							</div>
							<div class="tab-total">
								<!-- single-product-start -->
								<div class="product-wrapper mb-40">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/5.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Set of Sprite Yoga Straps</a></h4>
										<div class="product-price">
											<ul>
												<li> <span>Starting at</span>$34.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/19.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Compete Track Tote</a></h4>
										<div class="product-price">
											<ul>
												<li>$32.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
							</div>
							<div class="tab-total">
								<!-- single-product-start -->
								<div class="product-wrapper mb-40">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/7.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Strive Shoulder Pack</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$32.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/4.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Chaz Kangeroo Hoodie</a></h4>
										<div class="product-price">
											<ul>
												<li>$52.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
							</div>
							<div class="tab-total">
								<!-- single-product-start -->
								<div class="product-wrapper mb-40">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/7.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="sale">new</span></li>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Strive Shoulder Pack</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$32.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="/goodibooks/resources/img/product/4.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
											<a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
												<i class="fa fa-search-plus"></i>
											</a>
										</div>
										<div class="product-flag">
											<ul>
												<li><span class="discount-percentage">-5%</span></li>
											</ul>
										</div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
												<li><a href="#"><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a href="#">Chaz Kangeroo Hoodie</a></h4>
										<div class="product-price">
											<ul>
												<li>$52.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
											<ul>
												<li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-end -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- home-main-area-end -->
	<!-- banner-area-start
	<div class="banner-area-5 mtb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="banner-img-2 for-height">
						<a href="#"><img src="/goodibooks/resources/img/banner/5.jpg" alt="banner" /></a>
						<div class="banner-text">
							<h3>G. Meyer Books & Spiritual Traveler Press</h3>
							<h2>Sale up to 30% off</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	banner-area-end -->
	
	
	<!-- footer-area-start -->
	<footer>
	
		<jsp:include page="/WEB-INF/views/modules/footbar.jsp" />
		
	</footer>
	<!-- Modal end -->


	<!-- all js here -->
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
<script type="text/javascript">
$(function() { 
	//topbar 장바구니 가져오기
	if (${not empty loginuser}) {
		$('#topbar-cart').load("/goodibooks/mypage/cartlist/${loginuser.id}");
	}
});
</script>
</body>

</html>
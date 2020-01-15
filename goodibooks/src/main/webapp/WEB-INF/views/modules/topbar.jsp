<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); %>

<!-- header-top-area-start -->
		<div class="header-top-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-12">
						
					<!-- 로그아웃 버튼 추가 - ms -->
					</div>
					<div class="col-lg-6 col-md-6 col-12">
						<div class="account-area text-right">
							<ul>
							<c:choose>
							<c:when test="${ empty sessionScope.loginuser }">
								<li><a href="/goodibooks/account/register.action">회원가입</a></li>
								<li><a href="/goodibooks/account/login.action">로그인</a></li>
							</c:when>
							<c:otherwise>
								<li>${ loginuser.name }님 환영합니다</li>
								<li><a href="/goodibooks/mypage/mypage.action">마이페이지</a></li>
								<li><a href="/goodibooks/account/logout.action">로그아웃</a></li>
							</c:otherwise>
							</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header-top-area-end -->
		<!-- header-mid-area-start -->
		<div class="header-mid-area ptb-40">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-12">
						<div class="logo-area">
							<a href="/goodibooks/"><img src="/goodibooks/resources/img/logo/3.png" alt="logo" /></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-5 col-12">
						<div class="header-search">
							<form action="#">
								<input type="text" placeholder="Search entire store here..." />
								<a href="#"><i class="fa fa-search"></i></a>
							</form>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-12">
						<div class="my-cart">
							<ul>
								<li><a href="/goodibooks/mypage/mycart.action"><i class="fa fa-shopping-cart"></i>장바구니</a>
									<span>2</span>
									<div class="mini-cart-sub">
										<div class="cart-product">
											<div class="single-cart">
												<div class="cart-img">
													<a href="#"><img src="/goodibooks/resources/img/product/1.jpg" alt="book" /></a>
												</div>
												<div class="cart-info">
													<h5><a href="#">Joust Duffle Bag</a></h5>
													<p>1 x £60.00</p>
												</div>
												<div class="cart-icon">
													<a href="#"><i class="fa fa-remove"></i></a>
												</div>
											</div>
											<div class="single-cart">
												<div class="cart-img">
													<a href="#"><img src="/goodibooks/resources/img/product/3.jpg" alt="book" /></a>
												</div>
												<div class="cart-info">
													<h5><a href="#">Chaz Kangeroo Hoodie</a></h5>
													<p>1 x £52.00</p>
												</div>
												<div class="cart-icon">
													<a href="#"><i class="fa fa-remove"></i></a>
												</div>
											</div>
										</div>
										<div class="cart-totals">
											<h5>Total <span>£12.00</span></h5>
										</div>
										<div class="cart-bottom">
											<a class="view-cart" href="/goodibooks/mypage/mycart.action">장바구니 이동</a>
											<a href="/goodibooks/account/checkout.action">결제하기</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header-mid-area-end -->
		<!-- main-menu-area-start -->
		<div class="main-menu-area d-md-none d-none d-lg-block" id="header-sticky">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="menu-area">
							<nav>
								<ul>
									<li><a href="/goodibooks/">Home</a></li>
									<li><a href="product-details.html">Book<i class="fa fa-angle-down"></i></a>
										<div class="mega-menu">
											<span>
												<a href="#" class="title">Jackets</a>
												<a href="/goodibooks/book/list.action">Tops & Tees</a>
												<a href="shop.html">Polo Short Sleeve</a>
												<a href="shop.html">Graphic T-Shirts</a>
												<a href="shop.html">Jackets & Coats</a>
												<a href="shop.html">Fashion Jackets</a>
											</span>
											<span>
												<a href="#" class="title">weaters</a>
												<a href="shop.html">Crochet</a>
												<a href="shop.html">Sleeveless</a>
												<a href="shop.html">Stripes</a>
												<a href="shop.html">Sweaters</a>
												<a href="shop.html">hoodies</a>
											</span>
											<span>
												<a href="#" class="title">Bottoms</a>
												<a href="shop.html">Heeled sandals</a>
												<a href="shop.html">Polo Short Sleeve</a>
												<a href="shop.html">Flat sandals</a>
												<a href="shop.html">Short Sleeve</a>
												<a href="shop.html">Long Sleeve</a>
											</span>
											<span>
												<a href="#" class="title">Jeans Pants</a>
												<a href="shop.html">Polo Short Sleeve</a>
												<a href="shop.html">Sleeveless</a>
												<a href="shop.html">Graphic T-Shirts</a>
												<a href="shop.html">Hoodies</a>
												<a href="shop.html">Jackets</a>
											</span>
										</div>
									</li>
									<li><a href="#">게시판<i class="fa fa-angle-down"></i></a>
										<div class="sub-menu">
											<ul>
												<li><a href="/goodibooks/board/notice.action">공지사항</a></li>
												<li><a href="/goodibooks/board/qna.action">자주하는질문</a></li>
											</ul>
										</div>
									</li>
									
									<li><a href="#">관리자 페이지<i class="fa fa-angle-down"></i></a>
										<div class="sub-menu">
											<ul>
												<li><a href="/goodibooks/admin/admin.action">모든회원조회</a></li>
												<li><a href="/goodibooks/book/register.action">책 등록</a></li>
											</ul>
										</div>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- main-menu-area-end -->
		
		<!-- mobile-menu-area-start -->
		<div class="mobile-menu-area d-lg-none d-block fix">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="mobile-menu">
							<nav id="mobile-menu-active">
								<ul id="nav">
									<li><a href="index.html">Home</a>
										<ul>
											<li><a href="index.html">Home-1</a></li>
											<li><a href="index-2.html">Home-2</a></li>
											<li><a href="index-3.html">Home-3</a></li>
											<li><a href="index-4.html">Home-4</a></li>
											<li><a href="index-5.html">Home-5</a></li>
											<li><a href="index-6.html">Home-6</a></li>
											<li><a href="index-7.html">Home-7</a></li>
										</ul>
									</li>
									<li><a href="shop.html">Enable Cookies</a></li>
									<li><a href="product-details.html">Pages</a>
										<ul>
											<li><a href="shop.html">shop</a></li>
											<li><a href="shop-list.html">shop list view</a></li>
											<li><a href="product-details.html">product-details</a></li>
											<li><a href="product-details-affiliate.html">product-affiliate</a></li>
											<li><a href="blog.html">blog</a></li>
											<li><a href="blog-details.html">blog-details</a></li>
											<li><a href="contact.html">contact</a></li>
											<li><a href="about.html">about</a></li>
											<li><a href="login.html">login</a></li>
											<li><a href="register.html">register</a></li>
											<li><a href="my-account.html">my-account</a></li>
											<li><a href="cart.html">cart</a></li>
											<li><a href="compare.html">compare</a></li>
											<li><a href="checkout.html">checkout</a></li>
											<li><a href="wishlist.html">wishlist</a></li>
											<li><a href="404.html">404 Page</a></li>
										</ul>
									</li>
									<li><a href="contact.html">contact us</a></li>
									<li><a href="#">blog</a>
										<ul>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="blog-details.html">blog-details</a></li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- mobile-menu-area-end -->
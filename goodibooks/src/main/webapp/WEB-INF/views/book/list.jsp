<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>책 목록</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

	<!-- all css here -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />
		
    <script src="/goodibooks/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    
</head>

<body class="shop">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!-- header-area-start -->
	<header>
		
		<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />
		
		
	</header>
	<!-- header-area-end -->
	<!-- breadcrumbs-area-start -->
	<div class="breadcrumbs-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumbs-menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#" class="active">shop list</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->
	<!-- shop-main-area-start -->
	<div class="shop-main-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-12 col-12 order-lg-1 order-2 mt-sm-50 mt-xs-40">
					<div class="shop-left">
						<div class="section-title-5 mb-30">
							<h2>Shopping Options</h2>
						</div>
						<div class="left-title mb-20">
							<h4>Category</h4>
						</div>
						<div class="left-menu mb-30">
							<ul>
									<li><a href="list.action">전체 보기<span>${totalBook}</span></a></li>
								<c:forEach var="c" items="${categorys}">
									<li><a href="list.action?searchType=C&searchKey=${c.category_name}">${c.category_name}<span>${c.book_count}</span></a></li>
								</c:forEach>
							</ul>
						</div>

					</div>
				</div>
				<div class="col-lg-9 col-md-12 col-12 order-lg-2 order-1">
					<div class="category-image mb-30">
						<a href="#"><img src="/goodibooks/resources/img/banner/32.jpg" alt="banner" /></a>
					</div>
					<div class="section-title-5 mb-30">
						<h2>Book</h2>
					</div>
					<div class="toolbar mb-30">
						<div class="shop-tab">
							<div class="tab-3">
								<ul class="nav">
									<li><a href="#th" data-toggle="tab"><i class="fa fa-th-large"></i>Grid</a></li>
									<li><a class="active" href="#list" data-toggle="tab"><i class="fa fa-bars"></i>List</a></li>
								</ul>
							</div>
							<div class="list-page">
								<p>Items </p>
							</div>
						</div>

						
					</div>
					<!-- tab-area-start -->
					<div class="tab-content">
						<div class="tab-pane fade" id="th">
							<div class="row">
								<c:forEach var="b" items="${books}">
								<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
									<!-- single-product-start -->
									<div class="product-wrapper mb-40">
										<div class="product-img">
											<a href="detail.action?book_no=${b.book_no}">
												<img src="/goodibooks/resources/img/book-img/${b.imgs[0].img}.jpg" alt="book" class="primary" />
											</a>
											<div class="quick-view">
												<a class="action-view" href="detail.action?book_no=${b.book_no}" title="Quick View">
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
											<h4><a href="#">${b.name}</a></h4>
											<div class="product-price">
												<ul>
													<li>${b.price}</li>
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
								</c:forEach>
							</div>
						</div>
						<div class="tab-pane fade show active" id="list">
							<!-- single-shop-start -->
							
							<c:forEach var="b" items="${books}">
							
							<div class="single-shop mb-30">
								<div class="row">
									<div class="col-lg-4 col-md-4 col-12">
										<div class="product-wrapper-2">
											<div class="product-img">
												<a href="detail.action?book_no=${b.book_no}">
													<img src="/goodibooks/resources/img/book-img/${b.imgs[0].img}.jpg" alt="book" class="primary" />
												</a>
											</div>
										</div>
									</div>
									<div class="col-lg-8 col-md-8 col-12">
										<div class="product-wrapper-content">
											<div class="product-details">
												<div class="product-rating">
													<ul>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a class="detailBtn" href="detail.action?book_no=${b.book_no}">${b.name}</a></h4>
												<div class="product-price">
													<ul>
														<li>${b.price}</li>
														<li class="old-price">$38.00</li>
													</ul>
												</div>
												<p>${b.contents}</p>
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
									</div>
								</div>
							</div>
							<!-- single-shop-end -->
							
							</c:forEach>
														

						</div>
					</div>
					<!-- tab-area-end -->
					<!-- pagination-area-start -->
					<div class="pagination-area mt-50">
						<div class="page-number">
							<ul>
< 								<li><a href="#" class="active">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#" class="angle"><i class="fa fa-angle-right"></i></a></li> 			
							</ul>
						</div> 
					</div>
					<!-- pagination-area-end -->
				</div>
			</div>
		</div>
	</div>
	<!-- shop-main-area-end -->
	<!-- footer-area-start -->
	
	<!-- footer-area-start -->
	<footer>
	
		<jsp:include page="/WEB-INF/views/modules/footbar.jsp" />
		
	</footer>


	<!-- all js here -->
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
	<script type="text/javascript">
	$(function() {
	});
	</script>
</body>

</html>
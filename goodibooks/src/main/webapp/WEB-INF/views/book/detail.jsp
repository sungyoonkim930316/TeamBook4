<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html class="no-js" lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>책 상세 보기</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

		<!-- all css here -->
		<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />
		
    </head>
    <body class="product-details">
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
								<li><a href="#" class="active">product-details</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- product-main-area-start -->
		<div class="product-main-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-12 col-12 order-lg-1 order-1">
						<!-- product-main-area-start -->
						<div class="product-main-area">
							<div class="row">
								<div class="col-lg-5 col-md-6 col-12">
									<div class="flexslider">
									
										<!-- 사진 슬라이드 -->
										<ul class="slides">
										<c:forEach var="b" items="${book.imgs}">
											<li data-thumb="/goodibooks/resources/img/book-img/${b.img}.jpg">
											  <img src="/goodibooks/resources/img/book-img/${b.img}.jpg" />
											</li>
										</c:forEach>

										</ul>
									</div>
								</div>
								<div class="col-lg-7 col-md-6 col-12">
									<div class="product-info-main">
										<div class="page-title">
											<h1>${book.name}</h1><hr>
										</div>
										<div class="product-info-stock-sku">
											<div class="product-attribute">
												<span>카테고리명 &nbsp;&nbsp; <a href="list.action?searchType=C&searchKey=${book.category_name}">${book.category_name}</a></span><br><br>
												<span>출판사 &nbsp;&nbsp; <a href="list.action?searchType=P&searchKey=${book.pub_name}">${book.pub_name}</a></span><br><br>
												<span>저자 &nbsp;&nbsp; <a href="list.action?searchType=W&searchKey=${book.writer}">${book.writer}</a></span>
											</div>
										</div>
										<div class="product-reviews-summary">
											<div class="rating-summary">
												<c:if test="${reviews.size() > 0}">
													<!-- 별점평균 -->
													<c:set var="aver" value="0"></c:set>
													<c:forEach var="i" begin="0" end="${reviews.size() - 1}">
														<input type="hidden" value="${aver = aver + reviews[i].rate}">
													</c:forEach>
													
													<h6>별점 평균 : ${aver/reviews.size()}</h6>
													
												</c:if>
											</div>
											<div class="reviews-actions">
												<a href="#">${reviews.size()} Reviews</a>
											</div>
										</div>
										<div class="product-info-price">
											<div class="price-final">
												<span> ${book.price} 원 &nbsp;</span>
												<span class="old-price">${book.price + 10000} 원</span>
											</div>
										</div>
										<div class="product-add-form">
											<form action="#">
												<div class="quality-button">
													<input id="bookCount" class="qty" type="number" value="1">
												</div>
												<a id="cartBtn" href="">장바구니</a>
												<a id="buyBtn" href="/goodibooks/purchase/purchase.action">바로 구매하기</a>
											</form>
										</div>
									</div>
								</div>
							</div>	
						</div>
						<!-- product-main-area-end -->
						<!-- product-info-area-start -->
						<div class="product-info-area mt-80">
							<!-- Nav tabs -->
							<ul class="nav">
								<li><a class="active" href="#Details" data-toggle="tab">책 상세 정보</a></li>
								<li><a href="#Reviews" data-toggle="tab">리뷰 ${reviews.size()}</a></li>
							</ul>
							<div class="tab-content">
                                <div class="tab-pane fade show active" id="Details">
                                    <div class="valu">
                                    	<h4>책 소개</h4><hr>
                                      <p>${book.intro}</p><br><br>
                                      
                                      <h4>목차</h4><hr>
                                      <p>${book.contents}</p>

                                    </div>
                                </div>
                                
                                <!-- 한줄평 -->
                                <div class="tab-pane fade" id="Reviews">
                                
                                 <jsp:include page="/WEB-INF/views/book/reviews.jsp" />
                                 
                                </div>
                            
                            
                            </div>	
						</div>
						<!-- product-info-area-end -->
						
					</div>
					<div class="col-lg-3 col-md-12 col-12 order-lg-2 order-2">
						<div class="shop-left">
							<div class="left-title mb-20">
								<h4>이 책과 함께 구매한 책</h4>
							</div>
							<div class="random-area mb-30">
								<div class="product-active-2 owl-carousel">

									<div class="product-total-2">
									
										 <c:forEach var="product" items="${products}" varStatus="status"> 
										 	<c:if test="${status.index < 4}">
											<div class="single-most-product bd mb-18">
												<div class="most-product-img">
													<a href="/goodibooks/book/detail.action?book_no=${product.book_no}">
													<img src="/goodibooks/resources/img/book-img/${product.imgs[0].img}.jpg" alt="book" /></a>
												</div>
												<div class="most-product-content">
	
													<h4><a href="/goodibooks/book/detail.action?book_no=${product.book_no}">${product.name}</a></h4>
													<div class="product-price">
														<ul>
															<li>${product.price}</li>
														</ul>
													</div>
												</div>
											</div>
		
											</c:if>

										</c:forEach> 
										</div>	
									</div>	 
								</div>

							<div class="left-title-2">
								<h2>My Wish List</h2>
								<p>You have no items in your wish list.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- product-main-area-end -->
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
		$("#cartBtn").on("click", function(event) {
			
		if (!confirm("장바구니에 넣을까요?")) return;

		if (${empty sessionScope.loginuser}) alert("로그인이 필요합니다."); 
		else {
			$.ajax({
				"url" : "/goodibooks/mypage/mycart-insert.action",
				"method" : "post",
				"data" : {
					"cart_count" : $("#bookCount").val(),
					"book_no" : ${book.book_no},
					"id" : "${ empty sessionScope.loginuser ? '' : sessionScope.loginuser.id}"
				},
				"success" : function(data, status, xhr) {
					alert("상품을 장바구니에 담았습니다.");

					$('#topbar-cart').load("/goodibooks/mypage/cartlist/${loginuser.id}");
				},
				"error" : function(xhr, status, err) {
					alert(error);
				}
			});
			
		}		
		});

		/* $("#buyBtn").on("click", function(event) {

		}) */

	});
			
	</script>
    </body>
</html>

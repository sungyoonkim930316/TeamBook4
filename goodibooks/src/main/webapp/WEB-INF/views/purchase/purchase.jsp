<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Koparion – Book Shop HTML5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />

<script src="/goodibooks/resources/js/vendor/modernizr-2.8.3.min.js"></script>

</head>
<body class="blog">
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
							<li>자주 묻는 질문</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->


	<!-- breadcrumbs-area-end -->
	<!-- entry-header-area-start -->
	<div class="entry-header-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="entry-header-title">
						<h2>Checkout</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- entry-header-area-end -->
	<!-- coupon-area-area-start -->
	<div class="coupon-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="coupon-accordion">
						<h3>로그인이 필요한 서비스 입니다. <span id="showlogin" style="color:orange">로그인 </span>하기</h3>
						<div class="coupon-content" id="checkout-login">
							<div class="coupon-info">
								<form action="#">
									<p class="form-row-first">
										<label>ID <span class="required">*</span></label>
										<input type="text">
									</p>
									<p class="form-row-last">
										<label>패스워드  <span class="required">*</span></label>
										<input type="text">
									</p>
									<p class="form-row">					
										<input type="submit" value="로그인">
										<label>
											<input type="checkbox">
											 로그인 상태 유지
										</label>
									</p>
									<p class="lost-password">
										<a href="#">아이디 / 비밀번호 찾기</a>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- coupon-area-area-end -->
	<!-- checkout-area-start -->
	<div class="checkout-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-12">
				    <form id="loginuser-purchase-form" action="/goodibooks/purchase/loginuserpurchase.action" method="post">
                           <div class="row">
                               <div class="col-lg-6 col-md-12 col-12">
                               <div class="checkbox-form">						
                                   <h3>주문 상세</h3>
                                   <div class="row">
                                       <%-- <c:forEach var="member" items="${ list }"> --%>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">
                                           	<div class="form-group">
                                               <label>이름 <span class="required">*</span></label>										
                                               <input type="text" placeholder="" class="form-control" id="name" name="name" value="${ loginuser.name }">
                                            </div>  
                                           </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">
                                               <label>주소 <span class="required">*</span></label>
                                               <input type="text" class="form-control" id="addr2" name="addr2" value="${ loginuser.addr2 }">
                                           </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">									
                                               <input type="text" class="form-control" id="addr3" name="addr3" value="${ loginuser.addr3 }">
                                           </div>
                                       </div>
                                       <div class="col-lg-6 col-md-6 col-12">
                                           <div class="checkout-form-list">
                                            <div class="form-group">
                                               <label>우편번호 <span class="required">*</span></label>										
                                               <input type="text" id="addr1" name="addr1" class="form-control" value="${ loginuser.addr1 }">
                                            </div>
                                           </div>
                                       </div>
                                       <div class="col-lg-6 col-md-6 col-12">
                                           <div class="checkout-form-list">
                                               <label>Email 주소 <span class="required">*</span></label>										
                                               <input type="email" class="form-control" id="email" name="email" value="${ loginuser.email }">
                                           </div>
                                       </div>
                                       <div class="col-lg-6 col-md-6 col-12">
                                           <div class="checkout-form-list">
                                               <label>전화번호  <span class="required">*</span></label>										
                                               <input type="text" class="form-control" id="phone" name="phone" value="${ loginuser.phone }">
                                           </div>
                                       </div>
                                       <%-- </c:forEach> --%>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list create-acc">	
                                               <input type="checkbox" id="cbox">
                                               <label><a href="/goodibooks/account/register.action" style="color:black">계정을 생성하시겠습니까?</a></label>
                                           </div>
                                           <div class="checkout-form-list create-account" id="cbox_info" style="display: none;">
                                               <p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
                                               <label>Account password  <span class="required">*</span></label>
                                               <input type="password" placeholder="password">	
                                           </div>
                                       </div>								
                                   </div>
                                   <div class="different-address">
                                           <div class="ship-different-title">
                                               <h3>
                                                   <label>다른 주소로 배송하시겠습니까?</label>
                                                   <input type="checkbox" id="ship-box">
                                               </h3>
                                           </div>
                                       <div class="row" id="ship-box-info" style="display: none;">
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>이름 <span class="required">*</span></label>										
                                                   <input type="text" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>주소 <span class="required">*</span></label>
                                                   <input type="text" placeholder="도로명 주소" id="addr02">
                                               </div>
                                           </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">									
                                                   <input type="text" placeholder="상세주소">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>우편번호 <span class="required">*</span></label>										
                                                   <input type="text" placeholder="우편번호" id="addr01">
                                                   <div>
                                                   <button type="button" class="btn btn-primary mb-2" id="btn">우편번호 찾기</button>
                                                   </div>
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Email 주소 <span class="required">*</span></label>										
                                                   <input type="email" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>전화번호  <span class="required">*</span></label>										
                                                   <input type="text" placeholder="하이픈(-) 제외">
                                               </div>
                                           </div>								
                                       </div>
                                       <div class="order-notes">
                                           <div class="checkout-form-list">
                                               <label>Order Notes</label>
                                               <textarea placeholder="주문에 대한 메모를 입력하세요." rows="10" cols="30" id="checkout-mess"></textarea>
                                           </div>									
                                       </div>
                                   </div>													
                               </div>
                           </div>
                               <div class="col-lg-6 col-md-12 col-12">
                               <div class="your-order">
                                   <h3>Your order</h3>
                                   <div class="your-order-table table-responsive">
                                       <table>
                                           <thead>
                                               <tr>
                                                   <th class="product-name">Product</th>
                                                   <th class="product-total">Total</th>
                                               </tr>							
                                           </thead>
                                           <tbody>
                                               <tr class="cart_item">
                                                   <td class="product-name">
                                                       Vestibulum suscipit <strong class="product-quantity"> × 1</strong>
                                                   </td>
                                                   <td class="product-total">
                                                       <span class="amount">£165.00</span>
                                                   </td>
                                               </tr>
                                               <tr class="cart_item">
                                                   <td class="product-name">
                                                       Vestibulum suscipit	<strong class="product-quantity"> × 1</strong>
                                                   </td>
                                                   <td class="product-total">
                                                       <span class="amount">£50.00</span>
                                                   </td>
                                               </tr>
                                           </tbody>
                                           <tfoot>
                                               <tr class="cart-subtotal">
                                                   <th>Cart Subtotal</th>
                                                   <td><span class="amount">£215.00</span></td>
                                               </tr>
                                               <tr class="shipping">
                                                   <th>Shipping</th>
                                                   <td>
                                                       <ul>
                                                           <li>
                                                               <input type="radio">
                                                               <label>
                                                                   Flat Rate: <span class="amount">£7.00</span>
                                                               </label>
                                                           </li>
                                                           <li>
                                                               <input type="radio">
                                                               <label>Free Shipping:</label>
                                                           </li>
                                                           <li></li>
                                                       </ul>
                                                   </td>
                                               </tr>
                                               <tr class="order-total">
                                                   <th>Order Total</th>
                                                   <td><strong><span class="amount">£215.00</span></strong>
                                                   </td>
                                               </tr>								
                                           </tfoot>
                                       </table>
                                   </div>
                                   <div class="payment-method">
                                       <div class="payment-accordion">
                                           <div class="collapses-group">
                                               <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                                   <div class="panel panel-default">
                                                       <div class="panel-heading" role="tab" id="headingOne">
                                                           <h4 class="panel-title">
                                                               <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                                 Direct Bank Transfer
                                                               </a>
                                                           </h4>
                                                       </div>
                                                       <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                           <div class="panel-body">
                                                               <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                                           </div>
                                                       </div>
                                                   </div>
                                                   <div class="panel panel-default">
                                                       <div class="panel-heading" role="tab" id="headingTwo">
                                                           <h4 class="panel-title">
                                                               <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                                 Cheque Payment
                                                               </a>
                                                           </h4>
                                                       </div>
                                                       <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                           <div class="panel-body">
                                                               <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                           </div>
                                                       </div>
                                                   </div>
                                                   <div class="panel panel-default">
                                                       <div class="panel-heading" role="tab" id="headingThree">
                                                           <h4 class="panel-title">
                                                               <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                                PayPal <img src="img/2.png" alt="payment" />
                                                               </a>
                                                           </h4>
                                                       </div>
                                                       <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                         <div class="panel-body">
                                                               <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                                                         </div>
                                                       </div>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                       <div class="order-button-payment">
                                           <input type="submit" value="주문">
                                       </div>
                                   </div>
                               </div>
                           </div>
                           </div>
                       </form>
				</div>
			</div>
		</div>
	</div>


	<!-- footer-area-start -->
	<footer>

		<jsp:include page="/WEB-INF/views/modules/footbar.jsp" />

	</footer>
	<!-- Modal end -->


	<!-- all js here -->
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
	<script type="text/javascript">
		$(function() {
			$("#id, #name, #addr1, #addr2, #addr3, #phone, #email").attr({"readonly": "readonly" });
		})
		
		$("#btn").on("click", function(event) {
			 new daum.Postcode({
			        oncomplete: function(data) {

						$("#addr01").val(data.postcode);
						$("#addr02").val(data.roadAddress);
						//$("#jibunAddress").val(data.jibunAddress);
	                   	
			        }
			    }).open();
		});
	</script>

</body>
</html>

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
						<h3>회원 주문 <span id="showlogin">로그인 클릭</span></h3>
						<div class="coupon-content" id="checkout-login">
							<div class="coupon-info">
								<p class="coupon-text">Quisque gravida turpis sit amet nulla posuere lacinia. Cras sed est sit amet ipsum luctus.</p>
								<form action="#">
									<p class="form-row-first">
										<label>Username or email <span class="required">*</span></label>
										<input type="text">
									</p>
									<p class="form-row-last">
										<label>Password  <span class="required">*</span></label>
										<input type="text">
									</p>
									<p class="form-row">					
										<input type="submit" value="Login">
										<label>
											<input type="checkbox">
											 Remember me 
										</label>
									</p>
									<p class="lost-password">
										<a href="#">Lost your password?</a>
									</p>
								</form>
							</div>
						</div>
						<h3>쿠폰이 있으신가요? <span id="showcoupon">쿠폰 번호를 입력해 주세요.</span></h3>
						<div class="coupon-checkout-content" id="checkout_coupon">
							<div class="coupon-info">
								<form action="#">
									<p class="checkout-coupon">
										<input type="text" placeholder="Coupon code">
										<input type="submit" value="Apply Coupon">
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
				    <form action="#">
                           <div class="row">
                               <div class="col-lg-6 col-md-12 col-12">
                               <div class="checkbox-form">						
                                   <h3>주문 상세</h3>
                                   <div class="row">
                                       <div class=" col-lg-12">
                                           <div class="country-select">
                                               <label>Country <span class="required">*</span></label>
                                               <select>
                                                 <option value="volvo">대한민국</option>
                                                 <option value="saab">日本</option>
                                                 <option value="mercedes">中文版</option>
                                                 <option value="audi">Россия</option>
                                                 <option value="audi2">USA</option>
                                                 <option value="audi3">إيران</option>
                                                 <option value="audi4">Україна</option>
                                                 <option value="audi5">Hrvatska</option>
                                               </select> 										
                                           </div>
                                       </div>
                                       <%-- <c:forEach var="member" items="${ list }"> --%>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">
                                               <label>이름 <span class="required">*</span></label>										
                                               <input type="text" placeholder="">
                                           </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">
                                               <label>회사명</label>
                                               <input type="text" placeholder="">
                                           </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">
                                               <label>주소 <span class="required">*</span></label>
                                               <input type="text" placeholder="도로명 주소">
                                           </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">									
                                               <input type="text" placeholder="상세주소 (선택)">
                                           </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list">
                                               <label>Town / City <span class="required">*</span></label>
                                               <input type="text" placeholder="시/도/군">
                                           </div>
                                       </div>
                                       <div class="col-lg-6 col-md-6 col-12">
                                           <div class="checkout-form-list">
                                               <label>우편번호 <span class="required">*</span></label>										
                                               <input type="text" placeholder="Postcode / Zip">
                                           </div>
                                       </div>
                                       <div class="col-lg-6 col-md-6 col-12">
                                           <div class="checkout-form-list">
                                               <label>Email 주소 <span class="required">*</span></label>										
                                               <input type="email" placeholder="">
                                           </div>
                                       </div>
                                       <div class="col-lg-6 col-md-6 col-12">
                                           <div class="checkout-form-list">
                                               <label>전화번호  <span class="required">*</span></label>										
                                               <input type="text" placeholder="하이픈(-) 없이 입력하세요">
                                           </div>
                                       </div>
                                       <%-- </c:forEach> --%>
                                       <div class="col-lg-12 col-md-12 col-12">
                                           <div class="checkout-form-list create-acc">	
                                               <input type="checkbox" id="cbox">
                                               <label>Create an account?</label>
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
                                           <div class="col-lg-12">
                                               <div class="country-select">
                                                   <label>Country <span class="required">*</span></label>
                                                   <select>
                                                     <option value="volvo">bangladesh</option>
                                                     <option value="saab">Algeria</option>
                                                     <option value="mercedes">Afghanistan</option>
                                                     <option value="audi">Ghana</option>
                                                     <option value="audi2">Albania</option>
                                                     <option value="audi3">Bahrain</option>
                                                     <option value="audi4">Colombia</option>
                                                     <option value="audi5">Dominican Republic</option>
                                                   </select> 										
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>First Name <span class="required">*</span></label>										
                                                   <input type="text" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Last Name <span class="required">*</span></label>										
                                                   <input type="text" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Company Name</label>
                                                   <input type="text" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Address <span class="required">*</span></label>
                                                   <input type="text" placeholder="Street address">
                                               </div>
                                           </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">									
                                                   <input type="text" placeholder="Apartment, suite, unit etc. (optional)">
                                               </div>
                                           </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Town / City <span class="required">*</span></label>
                                                   <input type="text" placeholder="Town / City">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>State / County <span class="required">*</span></label>										
                                                   <input type="text" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Postcode / Zip <span class="required">*</span></label>										
                                                   <input type="text" placeholder="Postcode / Zip">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Email Address <span class="required">*</span></label>										
                                                   <input type="email" placeholder="">
                                               </div>
                                           </div>
                                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                               <div class="checkout-form-list">
                                                   <label>Phone  <span class="required">*</span></label>										
                                                   <input type="text" placeholder="Postcode / Zip">
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
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
	<script type="text/javascript">
		$(function() {
			
		})
	</script>

</body>
</html>

<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Koparion – Book Shop HTML5 Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="/goodibooks/resoures/img/favicon.png">

	<!-- all css here -->
	<!-- bootstrap v3.3.6 css -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />

	<script src="/goodibooks/resources/js/vendor/modernizr-2.8.3.min.js"></script>
	
</head>

<body class="register">
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
							<li><a href="#" class="active">화원정보 수정</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->
	
	<!-- user-login-area-start -->
	<div class="user-login-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="login-title text-center mb-30">
						<h2>회원정보 수정</h2>
					</div>
				</div>
				<div class="offset-lg-2 col-lg-8 col-md-12 col-12">
					<div class="billing-fields">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12">
								<div class="single-register">
									<form action="#">
										<label>First Name<span>*</span></label>
										<input type="text" />
									</form>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-12">
								<div class="single-register">
									<form action="#">
										<label>Last Name<span>*</span></label>
										<input type="text" />
									</form>
								</div>
							</div>
						</div>
						<div class="single-register">
							<form action="#">
								<label>Company Name</label>
								<input type="text" />
							</form>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12">
								<div class="single-register">
									<form action="#">
										<label>Email Address<span>*</span></label>
										<input type="text" />
									</form>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-12">
								<div class="single-register">
									<form action="#">
										<label>Phone<span>*</span></label>
										<input type="text" />
									</form>
								</div>
							</div>
						</div>
						<div class="single-register">
							<label>Country<span>*</span></label>
							<select class="chosen-select" tabindex="1" style="width:100%;" data-placeholder="Default Sorting">
								<option value="country">Select a country</option>
								<option value="Islands">Aland Islands</option>
								<option value="Afghanistan">Afghanistan</option>
								<option value="Albania">Albania</option>
								<option value="Samoa">American Samoa</option>
							</select>
						</div>
						<div class="single-register">
							<form action="#">
								<label>Address<span>*</span></label>
								<input type="text" placeholder="Street address" />
								<input type="text" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional" />
							</form>
						</div>
						<div class="single-register">
							<form action="#">
								<label>Town/City<span>*</span></label>
								<input type="text" />
							</form>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12">
								<div class="single-register">
									<label>State<span>*</span></label>
									<select class="chosen-select" tabindex="1" style="width:100%;" data-placeholder="Default Sorting">
										<option value="Select">Select a State</option>
										<option value="Andhra">Andhra Pradesh</option>
										<option value="Pradesh">Arunachal Pradesh</option>
										<option value="Delhi">Delhi</option>
										<option value="Lakshadeep">Lakshadeep</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-12">
								<div class="single-register">
									<form action="#">
										<label>Postcode/zip<span>*</span></label>
										<input type="text" placeholder="Postcode/zip" />
									</form>
								</div>
							</div>
						</div>
						<div class="single-register">
							<form action="#">
								<label>Account password<span>*</span></label>
								<input type="text" placeholder="Password" />
							</form>
						</div>
						<div class="single-register">
							<form action="#">
								<label>Confirm password<span>*</span></label>
								<input type="text" placeholder="Password" />
							</form>
						</div>
						<div class="single-register single-register-3">
							<input id="rememberme" type="checkbox" name="rememberme" value="forever">
							<label class="inline">I agree <a href="#">Terms & Condition</a></label>
						</div>
						<div class="single-register">
							<a href="#">Register</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	
	<!-- user-login-area-end -->
	
	
	<!-- footer-area-start -->
	<footer>
		
		<jsp:include page="/WEB-INF/views/modules/footbar.jsp" />
		
	</footer>
	<!-- footer-area-end -->


	<!-- all js here -->
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
</body>

</html>
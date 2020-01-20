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
								<li><a href="#" class="active">관리자 책등록</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		
		
		<div class="user-login-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="login-title text-center mb-30">
						<h2>책 등록</h2>
					</div>
				</div>
				<div class="offset-lg-2 col-lg-8 col-md-12 col-12">
					<!-- <div class="billing-fields"> -->
					
					<!-- form 변경 -->
					<form id="register-form" action="register.action" method="post">
						<div class="form-group" style="width:360px;">
					      <label for="inputState">카테고리</label>
					      <select id="inputState" class="form-control">
					        <option selected>1번 카테고리</option>
					        <option>2번 카테고리</option>
					      </select>
					    </div>
					    
						<div class="form-group" style="width:360px;">
					      <label for="inputState">출판사</label>
					      <select id="inputState" class="form-control">
					        <option selected>1번 출판사</option>
					        <option>2번 출판사</option>
					      </select>
						</div>
						 <div class="form-group" style="width:360px;">
							  <label for="inputAddress">책이름</label>
							  <input type="text" class="form-control" id="name" name="name">
						  </div>
						  <div class="form-group" style="width:360px;">
							  <label for="inputAddress">가격</label>
							  <input type="text" class="form-control" id="price" name="price">
						  </div>
						  <div class="form-group" style="width:360px;">
						    <label for="inputAddress">지은지</label>
						    <input type="text" class="form-control" id="writer" name="writer">
						  </div>
						  <div class="form-group" style="width:360px;">
						    <label for="inputAddress">옮긴이</label>
						    <input type="email" class="form-control" id="translator" name="translator">
						  </div>
						  <div class="form-group">
						    <label for="exampleFormControlTextarea1">책소개</label>
						    <textarea class="form-control" id="intro" name="intro" rows="8"></textarea>
						  </div>
						  <div class="form-row">
						    <label for="exampleFormControlFile1">책 이미지1</label>
						    <input type="file" class="form-control-file" id="bookimg1">
							<label for="exampleFormControlFile1">책 이미지2</label>
						    <input type="file" class="form-control-file" id="bookimg2">
						  </div>
						  
						  <br><br>
						  <button type="button" id="register" class="btn btn-primary">책등록</button>
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
	
	
    </body>
</html>

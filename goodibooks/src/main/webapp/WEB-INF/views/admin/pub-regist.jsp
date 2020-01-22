<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
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
							<h2>출판사 관리</h2>
						</div>
					</div>
					
					<div class="offset-lg-2 col-lg-8 col-md-12 col-12">
					
						<div id="pub-list-container">

							<jsp:include page="/WEB-INF/views/admin/pub-list.jsp"></jsp:include>
						
						</div>	
						
					
					</div>
					
				</div>
			</div>
		</div>
		
		
		<!-- footer-area-start -->
		<footer>
	
		<jsp:include page="/WEB-INF/views/modules/footbar.jsp" />
		
	</footer>

	

	<!-- all js here -->
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	<script type="text/javascript">
		$(function() {
			$('input[name=bookImg]').on('change', function(event) {
				var idx = $(this).attr('data-idx');

				if (this.files && this.files[0]) { //파일선택기의 파일 선택 확인
					var reader = new FileReader();

					//파일을 다 읽었을 때 호출할 함수 지정
					reader.onload = function(e) {
						$('#bookImg' + idx).attr('src', e.target.result);
					};

					reader.readAsDataURL(this.files[0]); // 파일 읽기
				}

			});

			// 출판사 등록
			$("#pubRegister-btn").on("click", function(event) {

				var data = $("#pub-form input[name=pub_name]").val()

				$.ajax({
					"url" : "/goodibooks/admin/pubRegist",
					"method" : "post",
					"data" : { "pub_name": data },
					"success" : function(data, status, xhr){
						$("#pub-list-container").load("/goodibooks/admin/showPub");
					},
					"error" : function(xhr, status, err){
						alert("실패해버렸지 뭐얌?")
					}
				})
				
			})

		});
	</script>
	
    </body>
</html>

<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Koparion – Book Shop HTML5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/goodibooks/resoures/img/favicon.png">

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
							<li><a href="#" class="active">회원가입</a></li>
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
						<h2>회원가입</h2>
						<p>구디북스 회원가입을 환영합니다</p>
					</div>
				</div>
				<div class="offset-lg-2 col-lg-8 col-md-12 col-12">
					<div class="billing-fields">
						<form action="register.action" method="post">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="single-register">
										<label>ID<span>*</span></label> <input type="text" name="id" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="single-register">
										<label>패스워드<span>*</span></label> <input type="password"
											placeholder="Password" name='passwd' />
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<div class="single-register">
										<label>패스워드 확인<span>*</span></label> <input type="password"
											placeholder="Password" />
									</div>
								</div>
							</div>

							<div class="single-register">
								<label>이름<span>*</span></label> <input type="text" name="name" />
							</div>

							<div class="single-register">
								<label>핸드폰<span>*</span></label> <input type="text" name="phone" />
							</div>

							<div class="single-register">
								<label>이메일<span>*</span></label> <input type="email" name="email" />
							</div>

							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="single-register">
										<label>우편번호<span>*</span></label> 
										<input type="text" id="addr1" name='addr1' />
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<div class="single-register">
										<button type="button" onclick="execPostCode();" >우편번호 찾기</button>
									</div>
								</div>
							</div>

							<div class="single-register" style="width:100%">
								<label>도로명 주소<span>*</span></label> 
								<input type="text" id="addr2" name="addr2"/>
							</div>
							<div class="single-register">
								<label>상세 주소<span>*</span></label> 
								<input type="text" id="addr3" name="addr3" />
							</div>
							
							<div class="single-register">
								<button id="register" type="submit">회원가입</button>
							</div>
						</form>
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


	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />

	<!-- 다음 주소 API -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<script type="text/javascript">
	$(function(){

		/$("#addr2, #addr3").attr({ "readonly" : "true" });

		function execPostCode() {
	         new daum.Postcode({
	             oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	 
	                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	 
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                if(fullRoadAddr !== ''){
	                    fullRoadAddr += extraRoadAddr;
	                }
	 
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                console.log(data.zonecode);
	                console.log(fullRoadAddr);
	                
	                
	                document.getElementById('addr1').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('addr2').value = fullAddr;
	                
	                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	            }
	         }).open();
	     }
			


	});
	</script>

</body>

</html>
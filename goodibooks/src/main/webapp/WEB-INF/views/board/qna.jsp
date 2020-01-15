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
								<li><a href="#" class="active">blog</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		
		<div class="container">
			<table class="table table-hover">
				<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>1</td>
					<td><a href="#">책은 어떻게 읽나요? - 안드로이드 앱 이용 방법</a></td>
					<td>2020-01-13</td>
					<td>1</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a href="#">홈페이지가 이상하게 나옵니다. 결제가 되지 않습니다.</a></td>
					<td>2019-08-03</td>
					<td>41</td>
				</tr>
				<tr>
					<td>3</td>
					<td><a href="#">내 서재에서 도서를 숨기고 싶어요. 안보이게 할 수 있나요?</a></td>
					<td>2019-12-10</td>
					<td>12</td>
				</tr>
				</tbody>
			</table>
			
			<hr>
			<a class="btn btn-default pull-right">글쓰기</a>
			<div class="text-center">
				<ul class="pagination pagination-hover">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
			</div>
		</div>
		<br><br><br><br><br><br>
		
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

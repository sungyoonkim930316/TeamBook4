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
							<li>1:1 문의</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->
	
	
	<!-- mainsection : 1:1 문의 게시글 상세-->
	
	<div class="container">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<span class="m-0 font-weight-bold text-default">글 상세 보기</span>
			</div>
			<div class="card-body">
				<form id="write-form" role="form" action="askwrite.action"
					method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" id='title'
							name='title' value='${ ask.title }'>
					</div>
					<%-- 
					<div class="form-group">
						<label>문의유형</label> 
						<form action="askwrite.action" method="get">
						<select id="askType" name="askType" aria-controls="dataTable" class="form-control" style="width:150px">
							<option value="AskCho">선택</option>
							<option value="AccAsk" ${ param.askType == 'AccAsk' ? 'selected' : '' }>계정문의</option>
							<option value="SysAsk" ${ param.askType == 'SysAsk' ? 'selected' : '' }>시스템장애</option>
							<option value="PayAsk" ${ param.askType == 'PayAsk' ? 'selected' : '' }>결제, 환불문의</option>
							<option value="EveAsk" ${ param.askType == 'EveAsk' ? 'selected' : '' }>이벤트문의</option>
							<option value="SugAsk" ${ param.askType == 'SugAsk' ? 'selected' : '' }>건의</option>
							<option value="EtcAsk" ${ param.askType == 'EtcAsk' ? 'selected' : '' }>기타문의</option>
						</select>
						</form>
					</div>
  --%>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" id='content'
							name='content'>${ ask.content }</textarea>
					</div>

					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" id='id' name='id' value="${ ask.id }">
					</div>
					
					<div class="form-group">
		            	<label>작성일자</label> 
		            	<input class="form-control" id='regDate' value='${ board.regDate }'>
		            </div>
		            
		            <div class="form-group">
		            	<label>수정일자</label> 
		            	<input class="form-control" id='updateDate' value='${ board.updateDate }'>
		            </div>

					<button id="askwriteedit-button" type="button" class="btn btn-light">수정하기</button>
					&nbsp
					<button type="reset" class="btn btn-light">삭제</button>
					&nbsp
					<button id="toask-button" type="button" class="btn btn-light">목록</button>
				</form>
			</div>
		</div>
	</div>
	
	<br><br><br>
	
	<!-- end of mainsection -->
	
	

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
			$('input, textarea').attr({'readonly': 'readonly'})

			$('#toask-button').on('click', function(event) {
				location.href = "ask.action";
			});
		});
	</script>

</body>
</html>

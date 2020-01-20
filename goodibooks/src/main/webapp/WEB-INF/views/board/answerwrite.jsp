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

</head>
<body class="blog">

	<!-- mainsection : 1:1 문의 답변작성 -->
	
	<c:choose>
	<c:when test="${ loginuser.userType == true }">
	<div class="container">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<span class="m-0 font-weight-bold text-default">답변 작성</span>
			</div>
			<div class="card-body">
				<form id="answerwrite-form" role="form" action="answerwrite.action"
					method="post">
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" id='ans_content'
							name='ans_content'></textarea>
					</div>
					<button id="answerwrite-button" type="button" class="btn btn-light">
						답변등록
					</button>
				</form>
			</div>
		</div>
	</div>
	</c:when>
	</c:choose>

	<br>
	<br>
	<br>

	<!-- end of mainsection -->

	<!-- all js here -->
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
	<script type="text/javascript">
		$(function() {

			$('#answerwrite-button').on('click', function(event) {

				event.preventDefault();
				event.stopPropagation();
				
				if ($('#content').val() == '') {
					alert('답변 내용을 입력하세요');
					$('#content').focus();
					return;
				}

				var values = $('#answerwrite-form').serialize();

				$.ajax({
					"url" : "/goodibooks/board/answerwrite",
					"method" : "post",
					"data" : values,
					"success" : function(data, status, xhr) {
						alert("답변이 등록됐습니다.")
					},
					"error" : function(xhr, status, err) {
						alert("답변 등록 실패")
					}

				});
			})

		})
	</script>

</body>
</html>

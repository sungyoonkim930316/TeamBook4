<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<!doctype html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>구디북스-1대1문의</title>
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


	<!-- mainsection : 1:1 문의 작성 -->
	
	<div class="container">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<span class="m-0 font-weight-bold text-default">글 쓰기</span>
			</div>
			<div class="card-body">
				<form id="write-form" role="form" action="askwrite.action" method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" id='title'
							name='title'>
					</div>
					<div class="form-group">
						<label>문의유형</label> 
						<select id="qnaType" name="qnaType" aria-controls="dataTable" class="form-control" style="width:150px">
							<option selected>선택</option>
							<option id="acc">계정문의</option>
							<option id="sys">시스템장애</option>
							<option id="pay">결제, 환불문의</option>
							<option id="eve">이벤트문의</option>
							<option id="sug">건의</option>
							<option id="etc">기타문의</option>
						</select>
					</div>
					<%-- <div>
						<label>계좌정보</label>&nbsp&nbsp&nbsp
						<input value="예금주 성명 '${ loginuser.name }'">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<label>은행명</label>&nbsp&nbsp&nbsp<input>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<label>계좌번호</label>&nbsp&nbsp&nbsp<input placeholder="하이픈(-)없이 입력">
					</div>
					<br><br>
					<div>
						<label>환불 신청 시 참고사항</label><br>
						1. 환불 받고자 하는 계좌의 예금주는 계정의 명의자 또는 실제 결제자와 명의가 동일해야 합니다.
   (회사는 해당 계좌의 진위 여부 등을 사전에 확인할 수 있습니다.)<br>
2. 환불 시 환불 금액의 10%를 환불 수수료로 공제한 금액을 환불해 드리며,
   환불 금액이 10,000원 미만인 경우 1,000원을 환불 수수료로 공제합니다.<br>
3. 환불 시에는 보유 RP 중 환불 가능한 RP 전부를 대상으로 진행합니다.
   (선물 받은 RP, 보너스 RP는 환불 대상에서 제외됩니다.)<br>
4. 환불 금액이 1,000원 이하인 경우에는 환불이 불가능합니다.<br>
5. RP 미사용 상태로 결제일로부터 7일 이내에는 환불 수수료를 차감하지 않는 결제취소를 요청할 수 있습니다.
   단, 가상계좌, 계좌이체 결제취소 요청 시에는 계좌 정보를 필요로 합니다.<br>
6. 환불 신청 시 (주)트랜스코스모스코리아(이하 TCK)에 환불처리에 필요한 정보가 위탁됩니다.
   "TCK"는 환불처리를 위한 용도로만 이를 활용하며, 관련 법령 등 특별한 사유가 없는 한 처리 후
   복구할 수 없는 방법을 통해 파기합니다.<br>
7. 이에 대해 동의하시는 경우에만 본 환불 신청을 해주시기 바라며,
   본 환불신청을 했다는 것은 이에 대한 동의로 간주됩니다.<br><br>
					</div> --%>
					
					
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" id='content'
							name='content'></textarea>
					</div>

					<div class="form-group">
						<label>작성자</label>
						<input class="form-control fixed" id='id' name='id' value="${ loginuser.id }">
					</div>

					<button id="askwrite-button" type="button" class="btn btn-light">등록</button>
					&nbsp
					<button type="reset" class="btn btn-light">다시쓰기</button>
					&nbsp
					<button id="toask-button" type="button" class="btn btn-light">목록</button>
				</form>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>

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
			$('#toask-button').on('click', function(event) {
				location.href = "ask.action";
			});

			$('#askwrite-button').on('click', function(event) {
				if ($('#title').val() == '') {
					alert('제목을 입력하세요.');
					$('#title').focus();
					return;
				}
				if ($('#content').val() == '') {
					alert('내용을 입력하세요');
					$('#content').focus();
					return;
				}

				$('#write-form').submit();
			})

			$('.fixed').attr({'readonly': 'readonly'})

			//var target = document.getElementById("askType");
			//alert('선텍된 옵션 text값 = ' + target.options[target.selectedIndex].text);
			//alert('선텍된 옵션 value값 = ' + target.options[target.selectedIndex].value);

			$('#qnaType').change(function(event) {
				//alert(this.value);
				var qnaType = $('#qnaType').val();
				if (qnaType == '결제, 환불문의') {
					/* $.ajax({
						"url" : "/goodibooks/board/answerwrite-versionpayment",
						"method" : "get",
						"data" : text,
						"success" : function(data, status, xhr) {
							alert("성공")
						},
						"error" : function(xhr, status, err) {
							alert("에러")
						}

					}) */
					$.ajax({

						type : "GET",
						url : "/goodibooks/board/answerwrite-versionpayment",
						datatype : "text",
						success : function(data) {
							alert("성공");
						},
						error : function(data) {
							alert("에러");
						}
					});
				}
			})
		})
	</script>

</body>
</html>

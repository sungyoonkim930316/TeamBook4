<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

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


	<!-- mainsection : 1:1 문의 작성 -->
	
	<div class="container">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<span class="m-0 font-weight-bold text-default">글 쓰기</span>
			</div>
			<div class="card-body">
				<form id="write-form" role="form" action="askwrite.action"
					method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" id='title'
							name='title'>
					</div>
					<%-- 
					<div class="form-group">
						<label>문의유형</label> 
						<form action="askwrite.action" method="get">
						<select id="askType" name="askType" aria-controls="dataTable" class="form-control" style="width:150px">
							https://maketh.tistory.com/113참고 <option value="AskCho"selected>선택</option>
							<%
							Connection con = null;
							PreparedStatement pstmt = null;
							ResultSet rs = null;
							try {
								con = DBConnection.getCon();
								String sql = "SELECT 칼럼명 FROM 테이블명 GROUP BY 칼럼명 ORDER BY 칼럼명";
								
								pstmt = con.prepareStatement(sql);
								rs = pstmt.executeQuery();
								while (rs.next()) {
									String BMT_CP = rs.getString("BMT_CP");
							%>
							<option value=<%=칼럼명 %>><%=칼럼명 %></option>
							<%
							}
							} catch (SQLException ex) {
								System.out.println(ex.getMessage());
							} finally {
								try {
									if (rs != null)
										rs.close();
									if (pstmt != null)
										pstmt.close();
									if (con != null)
										con.close();
								} catch (SQLException ex) {
									System.out.println(ex.getMessage());
								}
							}
							%>
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
		})
	</script>

</body>
</html>

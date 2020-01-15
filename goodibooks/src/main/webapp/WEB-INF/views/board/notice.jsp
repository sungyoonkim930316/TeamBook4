<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

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
		
		
		 <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        
                    </div>
                </div>
            </div>
        </div>

        <div >
            <div >
                <div >

                    <div >
                        <div >
                            <!-- <div >
                                <strong class="card-title">NOTICE</strong>
                            </div> -->
                            
				          
                            <div class="card-body" style="width: 60%; margin: auto;" >
                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr style="text-align: center">
                                            <th style="width:80px">글번호</th>
                                            <th>제목</th>
                                            <th style="width:120px">작성일자</th>
                                            <th style="width:120px">수정일자</th>
                                             <th style="width:120px" >
                                             <a href="write.action" class="btn btn-dark btn-sm" > 
								              	<span class="text">글 쓰기</span>
								              </a>
                                             </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${ boards }" var="board">
                                        <tr>
                                            <td style="text-align: center">${ board.no }</td>
                                            <td>${ board.title }</td>
                                            <td style="text-align: center">${ board.regDate }</td>
                                            <td style="text-align: center">${ board.updateDate }</td>
                                        </tr>
                                      </c:forEach>
                                     </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
				<br><br><br><br>

                </div>
            </div><!-- .animated -->
        </div><!-- .content -->

		
		
		<!-- footer-area-start -->
		<footer>
	
		<jsp:include page="/WEB-INF/views/modules/footbar.jsp" />
		
	</footer>
	<!-- Modal end -->


	<!-- all js here -->
	<!-- jquery latest version -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	
	<script type="text/javascript">
	</script>
	
	
    </body>
</html>

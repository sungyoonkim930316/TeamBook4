<%@page import="com.goodibooks.vo.MemberVO"%>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<% MemberVO member = new MemberVO(); %>

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

		<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />
		
    	<script src="/goodibooks/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    
    </head>
    <body class="cart">
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
								<li><a href="#" class="active">마이페이지</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- entry-header-area-start -->
		<div class="entry-header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="entry-header-title">
							<h2>My-Account</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- entry-header-area-end -->
		<!-- my account wrapper start -->
        <div class="my-account-wrapper mb-70">
            <div class="container">
                <div class="section-bg-color">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- My Account Page Start -->
                            <div class="myaccount-page-wrapper">
                                <!-- My Account Tab Menu Start -->
                                <div class="row">
                                    <div class="col-lg-3 col-md-4">
                                        <div class="myaccount-tab-menu nav" role="tablist">
                                            <a href="/goodibooks/account/edit.action" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
                                                Dash board</a>
                                            <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                                주문 내역</a>
                                            <a href="#reviews" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                                나의 한줄평</a>
                                            <a href="#qna" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                                1대1 문의 내역</a>
                                            <a href="#download" data-toggle="tab"><i class="fa fa-cloud-download"></i>
                                                Download</a>
                                            <a href="#payment-method" data-toggle="tab"><i class="fa fa-credit-card"></i>
                                                Payment
                                                Method</a>
                                            <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i>
                                                address</a>
                                            <a href="#edit-info" data-toggle="tab"><i class="fa fa-user"></i> 회원정보 수정</a>
                                            <!-- <a href="/goodibooks/account/checkpw.action"><i class="fa fa-user"></i> 회원정보 수정</a> -->
                                            <a id="logout"><i class="fa fa-sign-out"></i> Logout</a>
                                        </div>
                                    </div>
                                    <!-- My Account Tab Menu End -->

                                    <!-- My Account Tab Content Start -->
                                    <div class="col-lg-9 col-md-8">
                                        <div class="tab-content" id="myaccountContent">
                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>Dashboard</h5>
                                                    <div class="welcome">
                                                        <p>Hello, <strong>Erik Jhonson</strong> (If Not <strong>Jhonson
                                                            !</strong><a href="login-register.html" class="logout"> Logout</a>)</p>
                                                    </div>
                                                    <p class="mb-0">From your account dashboard. you can easily check &
                                                        view your recent orders, manage your shipping and billing addresses
                                                        and edit your password and account details.</p>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="orders" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>주문 내역</h5>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>Order</th>
                                                                    <th>Date</th>
                                                                    <th>Status</th>
                                                                    <th>Total</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Aug 22, 2018</td>
                                                                    <td>Pending</td>
                                                                    <td>$3000</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>July 22, 2018</td>
                                                                    <td>Approved</td>
                                                                    <td>$200</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>June 12, 2017</td>
                                                                    <td>On Hold</td>
                                                                    <td>$990</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->
                                            
                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="reviews" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>한줄평</h5>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>Order</th>
                                                                    <th>Date</th>
                                                                    <th>Status</th>
                                                                    <th>Total</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Aug 22, 2018</td>
                                                                    <td>Pending</td>
                                                                    <td>$3000</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>July 22, 2018</td>
                                                                    <td>Approved</td>
                                                                    <td>$200</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>June 12, 2017</td>
                                                                    <td>On Hold</td>
                                                                    <td>$990</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->
                                            
                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="qna" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>1대1 문의 내역</h5>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>Order</th>
                                                                    <th>Date</th>
                                                                    <th>Status</th>
                                                                    <th>Total</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Aug 22, 2018</td>
                                                                    <td>Pending</td>
                                                                    <td>$3000</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>July 22, 2018</td>
                                                                    <td>Approved</td>
                                                                    <td>$200</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>June 12, 2017</td>
                                                                    <td>On Hold</td>
                                                                    <td>$990</td>
                                                                    <td><a href="cart.html" class="btn btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="download" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>Downloads</h5>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>Product</th>
                                                                    <th>Date</th>
                                                                    <th>Expire</th>
                                                                    <th>Download</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>Haven - Free Real Estate PSD Template</td>
                                                                    <td>Aug 22, 2018</td>
                                                                    <td>Yes</td>
                                                                    <td><a href="#" class="btn btn-sqr"><i
                                                                        class="fa fa-cloud-download"></i>
                                                                            Download File</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>HasTech - Profolio Business Template</td>
                                                                    <td>Sep 12, 2018</td>
                                                                    <td>Never</td>
                                                                    <td><a href="#" class="btn btn-sqr"><i
                                                                        class="fa fa-cloud-download"></i>
                                                                            Download File</a></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>Payment Method</h5>
                                                    <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>Billing Address</h5>
                                                    <address>
                                                        <p><strong>Erik Jhonson</strong></p>
                                                        <p>1355 Market St, Suite 900 <br>
                                                            San Francisco, CA 94103</p>
                                                            <p>Mobile: (123) 456-7890</p>
                                                    </address>
                                                    <a href="#" class="btn btn-sqr"><i class="fa fa-edit"></i>
                                                        Edit Address</a>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="edit-info" role="tabpanel">
                                                <div class="myaccount-content">
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
															
															<form id="edit-form" action="/goodibooks/account/edit.action" method="post">
																 <div class="form-group" style="width:360px;">
																	  <label for="inputAddress">아이디</label>
																	  <input type="text" class="form-control" id="id" name="id" value="${ loginuser.id }">
																  </div>
																  <div class="form-group" style="width:360px;">
																    <label for="inputAddress">이름</label>
																    <input type="text" class="form-control" id="name" name="name" value="${ loginuser.name }">
																  </div>
																  <div class="form-group" style="width:360px;">
																    <label for="inputAddress">패스워드</label>
																    <input type="password" class="form-control" id="passwd" name="passwd">
																  </div>
																  <div class="form-group" style="width:360px;">
																    <label for="inputAddress">패스워드 확인</label>
																    <input type="password" class="form-control" id="confirm">
																  </div>
																    
																  <div class="form-group" style="width:360px;">
																    <label for="inputAddress">이메일</label>
																    <input type="email" class="form-control" id="email" name="email"value="${ loginuser.email }">
																  </div>
																  <div class="form-group" style="width:360px;">
																    <label for="inputAddress2">핸드폰</label>
																    <input type="text" class="form-control" id="phone" name="phone" value="${ loginuser.phone }">
																  </div>
																  
																  <label for="inputAddress">우편번호</label>
																  <div class="form-row align-items-center">
																    <div class="col-auto" style="width:360px;">
																      <input type="text" id="addr1" name="addr1" class="form-control mb-2" value="${ loginuser.addr1 }">
																    </div>
																    <div class="col-auto">
																      <button type="button" class="btn btn-primary mb-2" id="btn">우편번호 찾기</button>
																    </div>
																  </div>
																  
																  <div class="form-group" style="width:360px;">
																    <label for="inputAddress2">도로명 주소</label>
																    <input type="text" class="form-control" id="addr2" name="addr2" value="${ loginuser.addr2 }">
																   </div>
																   <div class="form-group" style="width:360px;">
																    <label for="inputAddress2">상세 주소</label>
																    <input type="text" class="form-control" id="addr3" name="addr3" value="${ loginuser.addr3 }">
																  </div>
																  <br>
																  <button type="button" id="edit" class="btn btn-primary">정보수정</button>
															</form>
															
															
															</div>
														</div>
													</div>
													</div>
												</div>
												<!-- user-login-area-end -->
                                                
                                                
                                            </div> <!-- Single Tab Content End -->
                                        </div>
                                    
                                    </div> <!-- My Account Tab Content End -->
                                </div>
                            </div> <!-- My Account Page End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- my account wrapper end -->
        
        <div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
		    <div class="modal-dialog" role="document">
		      <div class="modal-content">
		        <div class="modal-header">
		          <h5 class="modal-title" id="modalTitle">알림</h5>
		          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
		            <span aria-hidden="true">×</span>
		          </button>
		        </div>
		        <div class="modal-body"></div>
		        <div class="modal-footer">
		          <button class="btn btn-secondary" type="button" data-dismiss="modal">확인</button>
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
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
	<script type="text/javascript">
	$(function(){

		$("#btn").on("click", function(event) {
			 new daum.Postcode({
			        oncomplete: function(data) {

						$("#addr1").val(data.postcode);
						$("#addr2").val(data.roadAddress);
						//$("#jibunAddress").val(data.jibunAddress);
	                   	
			        }
			    }).open();
		});
		
		var updateMember = '${ updateMember }'; 
		if (updateMember && !history.state) {
			$('#messageModal .modal-body').text("회원정보가 수정 되었습니다.")
			$('#messageModal').modal('show');
		}
		history.replaceState({}, null, null);
		
		$("#logout").on("click", function(event){

			var yes = confirm("로그아웃 하시겠습니까?");
			
			if( yes ){
				location.href="/goodibooks/account/logout.action";
			}

		})

		$("#id, #name").attr({"readonly": "readonly" });
		$("#addr1, #addr2").attr({"readonly": "readonly" });

		$("#edit").on("click" , function(event) {
			// 1. 유효성 검사
			if($("#id").val() == '' ){
				alert("아이디를 입력하세요!");
				$("#id").focus();
				return;
			}
			if($("#passwd").val() == '' ){
				alert("패스워드를 입력하세요!");
				$("#passwd").focus();
				return;
			}
			if($("#confirm").val() == '' ){
				alert("패스워드 확인을 입력하세요!");
				$("#confirm").focus();
				return;
			}
			if($("#name").val() == '' ){
				alert("이름을 입력하세요!");
				$("#name").focus();
				return;
			}
			if($("#email").val() == '' ){
				alert("이메일을 입력하세요!");
				$("#email").focus();
				return;
			}
			if($("#phone").val() == '' ){
				alert("핸드폰을 입력하세요!");
				$("#phone").focus();
				return;
			}if($("#addr1").val() == '' ){
				alert("우편번호를 입력하세요!");
				return;
			}
			if($("#addr3").val() == '' ){
				alert("상세주소를 입력하세요!");
				$("#addr3").focus();
				return;
			}
			
			// 2. 오류가 없다면 서버로 전송
			$("#edit-form").submit();

		});
		

	})
	</script>
		
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

						<div class="my-cart">
							<ul>
								<li><a href="/goodibooks/mypage/mycart.action"><i class="fa fa-shopping-cart"></i>장바구니</a>
									<span>${sessionScope.cartlist.size()}</span>
									<div class="mini-cart-sub">
										<div id="" class="cart-product">
										
										<c:forEach var="c" items="${cartlist}">
										
											<div class="single-cart">
												<div class="cart-img">
													<a href="#"><img src="/goodibooks/resources/img/product/1.jpg" alt="book" /></a>
												</div>
												<div class="cart-info">
													<h5><a href="#">${c.book.name}</a></h5>
													<p>${c.book.price }</p>
												</div>
												<div class="cart-icon">
													<a href="#"><i class="fa fa-remove"></i></a>
												</div>
											</div>
										</c:forEach>
											
																						
											
										</div>
										<div class="cart-totals">
											<h5>Total <span>전체 가격</span></h5>
										</div>
										<div class="cart-bottom">
											<a class="view-cart" href="/goodibooks/mypage/mycart.action">장바구니 이동</a>
											<a href="/goodibooks/account/checkout.action">결제하기</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
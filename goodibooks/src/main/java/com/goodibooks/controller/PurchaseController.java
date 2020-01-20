package com.goodibooks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( path= {"/purchase/"})
public class PurchaseController {
	
	// 장바구니 페이지로 이동
		@GetMapping( path= {"/purchase.action"})
		public String toPurchase() {
			
			return "purchase/purchase";
		}

}

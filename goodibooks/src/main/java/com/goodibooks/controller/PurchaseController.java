package com.goodibooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodibooks.service.PurchaseService;

@Controller
@RequestMapping( path= {"/purchase/"})
public class PurchaseController {
	
	@Autowired
	@Qualifier("purchaseService")
	private PurchaseService purchaseService;
	
	// 결제 페이지로 이동
	@GetMapping( path= {"/purchase.action"})
	public String toPurchase() {
		
		return "purchase/purchase";
	}
	
	@PostMapping(path = {"/"})
	public String purchaseItems() {
		
		return "purchase/purchase";
	}

}

package com.goodibooks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( path= {"/mypage/"})
public class MyPageController {
	
	// 마이페이지로 이동
	@GetMapping( path= {"/mypage.action"})
	public String toMypage() {
		
		return "mypage/mypage";
	}

	// 장바구니 페이지로 이동
	@GetMapping( path= {"/mycart.action"})
	public String toMyCart() {
		
		return "mypage/mycart";
	}
	
}

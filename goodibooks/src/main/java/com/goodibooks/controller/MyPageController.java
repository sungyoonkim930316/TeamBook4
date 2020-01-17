package com.goodibooks.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodibooks.service.CartService;
import com.goodibooks.vo.CartListVO;

@Controller
@RequestMapping( path= {"/mypage/"})
public class MyPageController {
	
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
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
	
	// 장바구니에 책 추가
	@PostMapping("/mycart-insert.action")
	@ResponseBody
	public String addCart(CartListVO cart, HttpSession session) {
		
		cartService.insertCartByMemberId(cart);
		
		return "success";
	}
	
	// 장바구니 목록 가져오기
	@GetMapping("/cartlist/{id}")
	public String cartList(@PathVariable String id, HttpSession session) {
		
		//session.setAttribute("cartlist", cartService.showCartListByMemberId(id));
		List<CartListVO> carts = cartService.showCartListByMemberId(id);
		for(CartListVO c : carts) {
			System.out.println(c.toString());
		}
		session.setAttribute("cartlist", carts);
		
		return "/goodibooks/modules/cartlist";
	}

}

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
		
		List<CartListVO> carts = (List<CartListVO>)session.getAttribute("cartlist");
		
		if (carts == null) {
			cartService.insertCartByMemberId(cart);
		} else {
			for (int i = 0; i < carts.size(); i ++) {
				if (carts.get(i).getBook_no() == cart.getBook_no()) {
					cart.setCart_count(carts.get(i).getCart_count() + cart.getCart_count());
					cartService.deleteCartByCartNo(carts.get(i).getCart_no());
					carts.remove(i);
				}
			}
			
			cartService.insertCartByMemberId(cart);
		}
		
		return "success";
	}
	
	// 장바구니 목록 가져오기
	@GetMapping("/cartlist/{id}")
	public String cartList(@PathVariable String id, HttpSession session) {
		
		List<CartListVO> carts = cartService.showCartListByMemberId(id);
		session.setAttribute("cartlist", carts);
		
		//return "/goodibooks/modules/cartlist";
		return "/goodibooks/modules/topbar";
	}

	//장바구니에서 삭제
	@PostMapping("/mycart-delete.action")
	@ResponseBody
	public String deleteCart(int cart_no) {

		cartService.deleteCartByCartNo(cart_no);
		
		return "success";
	}
}

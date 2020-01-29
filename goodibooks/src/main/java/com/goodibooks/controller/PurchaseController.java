package com.goodibooks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodibooks.service.BookService;
import com.goodibooks.service.CartService;
import com.goodibooks.service.PurchaseService;
import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CartListVO;
import com.goodibooks.vo.OrderDetailVO;
import com.goodibooks.vo.OrderInfoVO;

@Controller
@RequestMapping( path= {"/purchase/"})
public class PurchaseController {
	
	@Autowired
	@Qualifier("purchaseService")
	private PurchaseService purchaseService;
	
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;
	
	// 결제 페이지로 이동
	@GetMapping( path= {"/purchase.action"})
	public String toPurchase(int book_no, int book_cnt, Model model) {
		
		BookInfoVO book = bookService.showBookDetailByBookNo(book_no);

		model.addAttribute("book", book);
		model.addAttribute("book_cnt", book_cnt);
		
		return "purchase/purchase";
	}
	
//	@PostMapping(path = { "/loginuserpurchase.action" })
//	public String orderInfo(OrderInfoVO order_info, RedirectAttributes attr) {
//		
//		System.out.println(order_info.toString());
//		
//		int newOrderInfoNo = purchaseService.orderInfoPlus(order_info);
//		
//		attr.addFlashAttribute("newOrderInfoNo", newOrderInfoNo);
//		
//		return "redirect:/";
//	}

	// 책 상세페이지에서 구매하기
	@PostMapping(path = { "/loginuserpurchase.action" })
	public String orderInfo(RedirectAttributes attr, OrderDetailVO detail) {
		
		int orderSuccess = purchaseService.purchaseBook(detail);
		
		attr.addFlashAttribute("newOrderInfoNo", orderSuccess);
		
		return "redirect:/";
	}
	
	// 장바구니에서 구매하기
	@PostMapping(path= {"cartListPurchase.action"})
	public String cartListOrder(RedirectAttributes attr, OrderDetailVO detail) {
		
		// 장바구니 리스트 -> Order_Deatil 로 카피 and 장바구니 삭제
		int cartListOrder = purchaseService.purchaseCartList(detail);
		
		return "";
	}
	

}

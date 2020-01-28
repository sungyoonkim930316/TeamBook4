package com.goodibooks.controller;

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
	
	@PostMapping(path = { "/loginuserpurchase.action" })
	public String orderInfo(OrderInfoVO order_info, RedirectAttributes attr) {
		
		System.out.println(order_info.toString());
		
		int newOrderInfoNo = purchaseService.orderInfoPlus(order_info);
		
		attr.addFlashAttribute("newOrderInfoNo", newOrderInfoNo);
		
		return "redirect:/";
	}
	
//	@PostMapping(path = { "/loginuserpurchase.action" })
//	public String orderDetail(OrderDetailVO order_detail, RedirectAttributes attr) {
//		
//		int newOrderDetailNo = purchaseService.orderDetailPlus(order_detail);
//		
//		attr.addFlashAttribute("newOrderDetailNo", newOrderDetailNo);
//		
//		return "redirect:/";
//	}

}

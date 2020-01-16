package com.goodibooks.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodibooks.service.BookService;
import com.goodibooks.service.ReviewService;
import com.goodibooks.ui.ThePager;
import com.goodibooks.ui.ThePager2;

import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.ReviewVO;

@Controller
@RequestMapping(path= {"/book/"})
public class BookController {
	
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;
	
	@Autowired
	@Qualifier("reviewService")
	private ReviewService reviewService;

	// 상품 리스트 페이지로 이동
	@GetMapping(path= {"/list.action"} )
	// @RequestParam(required = false) : 데이터 없으면 null 로 설정
	public String toList(Model model, 
			@RequestParam(required = false)String searchType, 
			@RequestParam(required = false)String searchKey, 
			@RequestParam(defaultValue = "1")int page_no, 
			HttpServletRequest req) {

		//페이징
		int pageSize = 3;
		int pagerSize = 3;
		int start = (page_no - 1) * pageSize + 1;
		int end = start + pageSize;
		int total = bookService.bookCount();
		ThePager2 pager = new ThePager2(total, page_no, pageSize, pagerSize, "list.action", req.getQueryString());
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("start", start);
		params.put("end", end);
		//////////////////////
		
		if (searchType == null) model.addAttribute("books", bookService.showBookList(params));
		else {
			params.put("searchType", searchType);
			params.put("searchKey", searchKey);
			
			model.addAttribute("books", bookService.searchBook(params));
		}

		model.addAttribute("pager", pager);
		model.addAttribute("categorys", bookService.getCategoryList());
		model.addAttribute("totalBook", total);

		return "book/list";
	}
	
	// 상품 디테일 페이지로 이동
	@GetMapping(path= {"/detail.action"})
	public String toDetail(int book_no, Model model) {
		
		BookInfoVO book = bookService.showBookDetailByBookNo(book_no);
		
		if (book == null) return "redirect:list";

		model.addAttribute("book", book);
		
		// 리뷰 조회
		List<ReviewVO> reviews = reviewService.findReviewWithBookNo(book_no);
		
		model.addAttribute("reviews", reviews);
		
		return "book/detail";

	}
	
	// 책 등록 페이지로 이동
	@GetMapping(path = {"/register.action"})
	public String toRegister() {
		
		return "book/register";
	}
	
}

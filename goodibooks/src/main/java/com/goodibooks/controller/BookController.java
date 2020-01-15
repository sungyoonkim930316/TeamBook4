package com.goodibooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodibooks.service.BookService;
import com.goodibooks.ui.ThePager;
import com.goodibooks.vo.BookInfoVO;

@Controller
@RequestMapping(path= {"/book/"})
public class BookController {
	
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;

	// 상품 리스트 페이지로 이동
	@GetMapping(path= {"/list.action"} )
	public String toList(Model model) {
		
		model.addAttribute("books", bookService.showBookList());
		model.addAttribute("categorys", bookService.getCategoryList());
		model.addAttribute("pager", new ThePager(0, 0, 5, 0, null, null));
				//총데이터수, 현재페이지번호, 페이지당데이터개수, 번호로 보여주는페이지link개수, 페이저 포함되는페이지 주소, 리퀘스트 쿼리스트링
		return "book/list";
	}
	
	// 상품 디테일 페이지로 이동
	@GetMapping(path= {"/detail.action"})
	public String toDetail(int book_no, Model model) {
		
		BookInfoVO book = bookService.showBookDetailByBookNo(book_no);
		
		if (book == null) return "redirect:list";

		model.addAttribute("book", book);
		return "book/detail";

	}
	
	// 책 등록 페이지로 이동
	@GetMapping(path = {"/register.action"})
	public String toRegister() {
		
		return "book/register";
	}
	
}

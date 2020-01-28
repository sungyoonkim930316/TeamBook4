package com.goodibooks.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goodibooks.service.BookService;
import com.goodibooks.vo.BookInfoVO;


@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("bookService")
	private BookService bookservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		// 메인페이지 새로운책 리스트
		List<BookInfoVO> books = bookservice.showBookListNoPaging();
		if (books != null) model.addAttribute("books", books);

		model.addAttribute("categorys", bookservice.getCategoryList());
		model.addAttribute("totalBook", bookservice.bookCount());
		
		return "home";
	}
	
}

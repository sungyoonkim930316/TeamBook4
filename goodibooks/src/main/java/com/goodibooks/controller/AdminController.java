package com.goodibooks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodibooks.service.AdminService;
import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;
import com.goodibooks.vo.MemberVO;
import com.goodibooks.vo.PublisherVO;

@Controller
@RequestMapping(path = {"/admin/"})
public class AdminController {
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	//어드민 페이지로 이동
	@GetMapping(path = {"/admin.action"})
	public String toAdmin(Model model) {
		
		List<MemberVO> list = adminService.showMemberList();
		model.addAttribute("list", list);
		
		return "account/admin";
	}
	
	// 책 등록 페이지로 이동
	@GetMapping(path = {"/register.action"})
	public String toRegister() {
			
		return "admin/register";
	}
	
	// 책 등록 페이지 이동
	@GetMapping(path= {"/bookRegister"})
	public String bookRegister(Model model) {

		// 카테고리 목록 조회
		List<CategoryVO> categorys = adminService.showCategory();
		model.addAttribute("categorys", categorys);
		
		// 출판사 목록 조회
		List<PublisherVO> publishers = adminService.showPublisher();
		model.addAttribute("publishers", publishers);
		
		return "/admin/book-register";
	}
	// 책등록 실행
	@PostMapping(path= {"/bookRegister"})
	public String bookRegist(BookInfoVO bookinfo) {
		
		adminService.bookRegist(bookinfo);
		
		return "redirect:/";
	}
	

}

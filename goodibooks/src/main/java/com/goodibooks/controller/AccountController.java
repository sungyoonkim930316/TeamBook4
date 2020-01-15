package com.goodibooks.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodibooks.service.MemberService;
import com.goodibooks.vo.MemberVO;

@Controller
@RequestMapping(path = {"/account/"})
public class AccountController {
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	// 회원가입 페이지 이동
	@GetMapping(path = {"/register.action"})
	public String toRegister() {
		
		return "account/register";
	}
	
	// 회원가입 처리
	@PostMapping(path = {"/register.action"})
	public String register(MemberVO member) {
		
		memberService.registerMember(member);
		
		return "redirect:login.action";
	}
	
	// 로그인 페이지 이동
	@GetMapping(path = {"/login.action"})
	public String toLogin() {
				
			return "account/login";
	}
	
	@PostMapping(path = {"/login.action"})
	public String login(MemberVO member, HttpSession session, Model model) {
		
		MemberVO member2 = memberService.findMemberByIdAndPasswd(member);
		if (member2 == null) {
			return "redirect:register.action";
		} else {
			// 로그인 처리
			session.setAttribute("loginuser", member2);
			model.addAttribute("member", member2);
			return "redirect:/";
		}
	}
	
	// 회원정보 수정 페이지로 이동
	@PostMapping(path = {"/edit.action"})
	public String toEdit(MemberVO member) {
		
		memberService.updateMember(member);
		
		return "redirect:/";
	}
	
	// 결제 페이지로 이동
	@GetMapping(path = {"/checkout.action"})
	public String toCheckout() {
		
		return "account/checkout";
	}
	
	// 어드민 페이지로 이동
	@GetMapping(path = {"/admin.action"})
	public String toAdmin() {
		
		return "account/admin";
	}
	
	// 로그아웃 실행 - ms
	@GetMapping(path = {"/logout.action"})
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/";
	}
	
}

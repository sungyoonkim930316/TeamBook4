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

import com.goodibooks.service.AskService;
import com.goodibooks.vo.BoardVO;
import com.goodibooks.vo.QnAVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path= {"/board/"})
@Log4j
public class AskController {
	
	@Autowired
	@Qualifier("askService")
	private AskService askService;
	
	@PostMapping(path = { "/askwrite.action" })
	public String askWrite(QnAVO qna, RedirectAttributes attr) { // 글쓰기 처리
		
		int newQnaNo = askService.askWriteBoard(qna);
		log.warn("NEW QNA NO : " + newQnaNo);
		
		attr.addFlashAttribute("newNo", newQnaNo); //session에 저장
		return "redirect:ask.action";
	}
	
	@GetMapping(path= {"/ask.action"})
	public String toAsk(Model model) {
		
		List<QnAVO> askList = askService.showQnaList();
		model.addAttribute("askList", askList);
		
		return "board/ask";
	}
	
	@GetMapping(path = {"/askwrite.action"})
	public String showAskWriteForm() {
		
		return "board/askwrite";
	}
	
	@GetMapping(path = { "/askdetail.action" })
	public String showAskDatail(int no, Model model) {
		
		QnAVO askdetail = askService.findAskDetailByNo(no);
		if (askdetail == null) {
			return "redirect:ask.action";
		}
		model.addAttribute("askdetail", askdetail);
		return "board/askdetail";
	}

}

package com.goodibooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodibooks.service.AnswerService;
import com.goodibooks.vo.AnswerVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path= {"/board/"})
public class AnswerController {
	
	@Autowired
	@Qualifier("answerService")
	private AnswerService answerService;
	
	@GetMapping(path = {"/answerwrite.action"})
	public String showAnswerWriteForm() {
		
		return "board/answerwrite";
	}
	
	////////////////////
	
//	@PostMapping(path = { "/answerwrite.action" })
//	public String answerWrite(AnswerVO ans, RedirectAttributes attr) {
//		
//		int newAnswerNo = answerService.answerWriteBoard(ans);
//		
//		attr.addFlashAttribute("newAnsNo", newAnswerNo);
//		return "redirect:askdetail.action?no=" + ans;
//		//return String.format("redirect:detail.action?no={ ask.no }");
//	}
	
//	@GetMapping(path = { "/askdetail.action" })
//	public String showAskDatail(int no, Model model) {
//		
//		QnAVO askdetail = askService.findAskDetailByNo(no);
//		if (askdetail == null) {
//			return "redirect:ask.action";
//		}
//		model.addAttribute("askdetail", askdetail);
//		return "board/askdetail";
//	}
//	
//	@GetMapping(path = { "/update.action" })
//	public String showAskUpdateForm(int no, Model model) {
//		
//		QnAVO askupdate = askService.updateAskByNo(no);
//		if (askupdate == null) {
//			return "redirect:ask.action";
//		}
//		
//		model.addAttribute("askupdate", askupdate);
//		
//		return "board/askupdate";
//	}
//	
//	@PostMapping(path = { "/update.action" })
//	public String update(QnAVO ask) {
//		
//		askService.updateAsk(ask);
//		
//		return String.format("redirect:askdetail.action");
//	}
//	
//	@GetMapping(path = { "/delete.action" })
//	public String deleteAsk(@RequestParam(value="no") int no) {
//		
//		askService.deleteAsk(no);
//		
//		return "redirect:ask.action";
//	}
	
//	@PostMapping(path = { "/update.action" })
//	public String update(QnAVO ask, RedirectAttributes attr) {
//		
//		askService.updateAsk(ask);
//	
//		return String.format("redirect:askdetail.action?no=${ ask.no }");
//		
//	}

}

package com.goodibooks.controller;

import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodibooks.service.AnswerService;
import com.goodibooks.service.AskService;
import com.goodibooks.vo.AnswerVO;
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
	
	@Autowired
	@Qualifier("answerService")
	private AnswerService answerService;
	
	@GetMapping(path = {"/qna.action"})
	public String toQna() {
		
		return "board/qna";
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
	
	@PostMapping(path = { "/askwrite.action" })
	public String askWrite(QnAVO qna, RedirectAttributes attr) {
		
		int newQnaNo = askService.askWriteBoard(qna);
		log.warn("NEW QNA NO : " + newQnaNo);
		
		attr.addFlashAttribute("newNo", newQnaNo);
		return "redirect:ask.action";
	}
	
	@GetMapping(path = { "/askdetail.action" })
	public String showAskDatail(int no, Model model) {
		
		QnAVO askdetail = askService.findAskDetailByNo(no);
		if (askdetail == null) {
			return "redirect:ask.action";
		}
		model.addAttribute("askdetail", askdetail);
		
		AnswerVO answers = answerService.getAnswerListByAskNo(no);
		model.addAttribute("answers", answers);
		
		return "board/askdetail";
	}
	
//	@GetMapping(path= {"/reviewContent/{no}"})
//	public String ReviewContent(@PathVariable int no, Model model) {
//		
//		
//		
//		return "/board/askdetail";
//	}
	
	@GetMapping(path = { "/askupdate.action" })
	public String showAskUpdateForm(int no, Model model) {
		
		QnAVO askupdate = askService.updateAskByNo(no);
		if (askupdate == null) {
			return "redirect:ask.action";
		}
		
		model.addAttribute("askupdate", askupdate);
		
		return "board/askupdate";
	}
	
	@PostMapping(path = { "/askupdate.action" })
	public String update(QnAVO ask, @RequestParam(value="no") int no) {
		
		askService.updateAsk(ask);
		
		return String.format("redirect:ask.action");
	}
	
	@GetMapping(path = { "/askdelete.action" })
	public String deleteAsk(@RequestParam(value="no") int no) {
		
		askService.deleteAsk(no);
		
		return "redirect:ask.action";
	}

}

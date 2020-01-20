package com.goodibooks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodibooks.service.AnswerService;
import com.goodibooks.service.AskService;
import com.goodibooks.vo.AnswerVO;
import com.goodibooks.vo.QnAVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path= {"/board/"})
public class AnswerController {
	
	@Autowired
	@Qualifier("answerService")
	private AnswerService answerService;
	
	@PostMapping("/answerwrite")
	@ResponseBody
	public String reply(AnswerVO answer, String action, RedirectAttributes attr) {
		
		int newAnswerNo = answerService.answerWriteBoard(answer);
		
		attr.addFlashAttribute("newAnsNo", newAnswerNo);
		
		return "success";
	}
	
	@GetMapping(path = { "/board/answerlist" })
	public String listByBno(Model model) {
		
		List<AnswerVO> answers = answerService.getAnswerListByAnsNo();
		
		model.addAttribute("answers",answers);
		
		return "board/answerlist";
	}

}

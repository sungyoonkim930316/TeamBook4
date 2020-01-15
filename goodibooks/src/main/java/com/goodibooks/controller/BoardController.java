package com.goodibooks.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodibooks.service.BoardService;
import com.goodibooks.vo.BoardVO;

@Controller
@RequestMapping(path= {"/board/"})
public class BoardController {
	
	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;

	@GetMapping(path= {"/notice.action"})
	public String toNotice(Model model) {
		List<BoardVO> boards = boardService.findNotice();
		
		model.addAttribute("boards", boards);
		
		return "board/notice";
	}
	
	
	@GetMapping(path= {"/qna.action"})
	public String toQna() {
		
		return "board/qna";
	}
	
	
}

package com.goodibooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodibooks.service.ReviewService;
import com.goodibooks.vo.ReviewVO;

@Controller
@RequestMapping(path = {"/review/"})
public class ReviewController {

	@Autowired
	@Qualifier("reviewService")
	private ReviewService reviewService;
	
	@PostMapping(path = {"/review.action"})
	public String registerReview(ReviewVO review) {
		
		reviewService.registerReview(review);
		System.out.println(review.getBook_no());
		
		return String.format("redirect:/book/detail.action?book_no=%d", review.getBook_no() );
	}
	
}

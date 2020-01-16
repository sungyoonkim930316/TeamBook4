package com.goodibooks.service;

import java.util.List;

import com.goodibooks.mapper.ReviewMapper;
import com.goodibooks.vo.ReviewVO;

import lombok.Setter;

public class ReviewServiceImpl implements ReviewService {

	@Setter
	private ReviewMapper reviewMapper;

	@Override
	public void registerReview(ReviewVO review) {
		
		reviewMapper.insertReview(review);
		
	}

	@Override
	public List<ReviewVO> findReviewWithBookNo(int book_no) {
		
		return reviewMapper.findReviewWithBookNo(book_no);
	}
	
}

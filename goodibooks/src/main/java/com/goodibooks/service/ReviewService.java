package com.goodibooks.service;

import java.util.List;

import com.goodibooks.vo.ReviewVO;

public interface ReviewService {

	void registerReview(ReviewVO review);

	List<ReviewVO> findReviewWithBookNo(int book_no);

}

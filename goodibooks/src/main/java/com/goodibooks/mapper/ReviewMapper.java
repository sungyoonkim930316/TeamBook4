package com.goodibooks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	void insertReview(ReviewVO review);

	List<ReviewVO> findReviewWithBookNo(int book_no);

	void updateReview(ReviewVO review);

	void deleteReview(int re_no);

}

package com.goodibooks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;
import com.goodibooks.vo.MemberVO;
import com.goodibooks.vo.PublisherVO;

@Mapper
public interface AdminMapper {

	List<MemberVO> showMemberList();

	void insertBook(BookInfoVO bookinfo);

	List<CategoryVO> selectCategory();

	List<PublisherVO> selectPublisher();

}

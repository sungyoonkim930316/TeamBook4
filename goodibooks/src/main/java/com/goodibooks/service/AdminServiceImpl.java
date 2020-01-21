package com.goodibooks.service;

import java.util.List;

import com.goodibooks.mapper.AdminMapper;
import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;
import com.goodibooks.vo.MemberVO;
import com.goodibooks.vo.PublisherVO;

import lombok.Setter;

public class AdminServiceImpl implements AdminService {

	@Setter
	private AdminMapper adminMapper;
	
	@Override
	public List<MemberVO> showMemberList() {
		
		return adminMapper.showMemberList();
	}

	@Override
	public void bookRegist(BookInfoVO bookinfo) {

		adminMapper.insertBook(bookinfo);
	}

	@Override
	public List<CategoryVO> showCategory() {

		return adminMapper.selectCategory();
	}

	@Override
	public List<PublisherVO> showPublisher() {

		return adminMapper.selectPublisher();
	}

}

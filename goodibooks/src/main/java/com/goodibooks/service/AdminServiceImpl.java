package com.goodibooks.service;

import java.util.List;

import com.goodibooks.mapper.AdminMapper;
import com.goodibooks.vo.MemberVO;

import lombok.Setter;

public class AdminServiceImpl implements AdminService {

	@Setter
	private AdminMapper adminMapper;
	
	@Override
	public List<MemberVO> showMemberList() {
		
		return adminMapper.showMemberList();
	}

}

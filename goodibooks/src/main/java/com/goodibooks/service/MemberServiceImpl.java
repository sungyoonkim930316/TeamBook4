package com.goodibooks.service;


import com.goodibooks.mapper.MemberMapper;
import com.goodibooks.vo.MemberVO;

import lombok.Setter;

public class MemberServiceImpl implements MemberService {
	
	@Setter
	private MemberMapper memberMapper;

	@Override
	public void registerMember(MemberVO member) {
		
		memberMapper.insertMember(member);

	}

	@Override
	public MemberVO findMemberByIdAndPasswd(MemberVO member) {
		
		return memberMapper.selectMemberByIdAndPasswd(member);
		
	}

	@Override
	public void updateMember(MemberVO member) {

		memberMapper.updateMember(member);
		
	}


}

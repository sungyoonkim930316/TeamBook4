package com.goodibooks.service;


import java.util.HashMap;
import java.util.Map;

import com.goodibooks.common.Util;
import com.goodibooks.mapper.MemberMapper;
import com.goodibooks.vo.MemberVO;

import lombok.Setter;

public class MemberServiceImpl implements MemberService {
	
	@Setter
	private MemberMapper memberMapper;

	@Override
	public void registerMember(MemberVO member) {
		
		String plainPasswd = member.getPasswd();
		String hashedPasswd = Util.getHashedString(plainPasswd, "SHA-256");
		member.setPasswd(hashedPasswd);
		
		memberMapper.insertMember(member);

	}

	@Override
	public MemberVO findMemberByIdAndPasswd(MemberVO member) {
		
		member.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-256"));
		
		return memberMapper.selectMemberByIdAndPasswd(member);
		
	}

	@Override
	public void updateMember(MemberVO member) {
		
		String plainPasswd = member.getPasswd();
		String hashedPasswd = Util.getHashedString(plainPasswd, "SHA-256");
		member.setPasswd(hashedPasswd);

		memberMapper.updateMember(member);
		
	}
	@Override
	public void deleteMember(MemberVO member) {

		memberMapper.deleteMember(member);
	}

	@Override
	public boolean chekPw(Map<String, String> map) {
		
		int result = 0;
		
		try {
			result = memberMapper.checkPw(map);
			System.out.println(result);
			if(result > 0) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public MemberVO findMemberById(String id) {
		
		return memberMapper.selectMemberById(id);
	}


}

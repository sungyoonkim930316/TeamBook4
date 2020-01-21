package com.goodibooks.service;

import java.util.Map;

import com.goodibooks.vo.MemberVO;

public interface MemberService {

	void registerMember(MemberVO member);

	MemberVO findMemberByIdAndPasswd(MemberVO member);

	void updateMember(MemberVO member);

	boolean chekPw(Map<String, String> map);
	
	MemberVO findMemberById(String id);

	void deleteMember(MemberVO member);

}

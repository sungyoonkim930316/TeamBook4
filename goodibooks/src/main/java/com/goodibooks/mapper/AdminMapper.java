package com.goodibooks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.MemberVO;

@Mapper
public interface AdminMapper {

	List<MemberVO> showMemberList();

}

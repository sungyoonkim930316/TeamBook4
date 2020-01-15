package com.goodibooks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.BoardVO;
import com.goodibooks.vo.MemberVO;

@Mapper
public interface BoardMapper {

	List<BoardVO> selectNotice();

	

	

}

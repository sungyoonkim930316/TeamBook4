package com.goodibooks.service;

import java.util.List;

import com.goodibooks.vo.BoardVO;
import com.goodibooks.vo.MemberVO;

public interface BoardService {

	List<BoardVO> findNotice();

}

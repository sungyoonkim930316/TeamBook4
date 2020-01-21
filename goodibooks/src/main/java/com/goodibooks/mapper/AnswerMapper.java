package com.goodibooks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.AnswerVO;

@Mapper
public interface AnswerMapper {

	void answerWriteBoard(AnswerVO ans);

	AnswerVO selectAnswerByAskNo(int no);

}

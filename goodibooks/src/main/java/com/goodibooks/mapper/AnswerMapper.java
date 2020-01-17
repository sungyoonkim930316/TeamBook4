package com.goodibooks.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.AnswerVO;

@Mapper
public interface AnswerMapper {

	void answerWriteBoard(AnswerVO ans);

}

package com.goodibooks.service;

import java.util.List;

import com.goodibooks.vo.AnswerVO;

public interface AnswerService {

	int answerWriteBoard(AnswerVO ans);

	AnswerVO getAnswerListByAskNo(int no);

}

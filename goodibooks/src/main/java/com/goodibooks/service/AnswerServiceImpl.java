package com.goodibooks.service;

import com.goodibooks.mapper.AnswerMapper;
import com.goodibooks.vo.AnswerVO;

import lombok.Setter;

public class AnswerServiceImpl implements AnswerService {

	@Setter
	private AnswerMapper answerMapper;
	
	@Override
	public int answerWriteBoard(AnswerVO ans) {
		
		answerMapper.answerWriteBoard(ans);
		return ans.getAns_no();
	}

}

package com.goodibooks.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.goodibooks.vo.BookImgVO;
import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;
import com.goodibooks.vo.EventBoardVO;
import com.goodibooks.vo.MemberVO;
import com.goodibooks.vo.PublisherVO;

public interface AdminService {

	List<MemberVO> showMemberList();

	//void bookRegist(BookInfoVO bookinfo);

	List<CategoryVO> showCategory();

	List<PublisherVO> showPublisher();

	void bookRegister(BookInfoVO bookinfo, ArrayList<BookImgVO> bookImgs);

	void pubRegist(PublisherVO publisher);

	// 이벤트 관련
	void writeEvent(EventBoardVO event);
	List<EventBoardVO> showEventList();
	EventBoardVO showEventByNo(int no);
	void updateEventByNo(EventBoardVO event);
	void deleteEventByNo(int no);
	void updateActiveByNo(HashMap<String, Object> params);
}

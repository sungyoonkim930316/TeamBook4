package com.goodibooks.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class BookInfoVO {

	private int book_no;
	private String name;
	private int price;
	private String intro;
	private String writer;
	private String translator;
	private String pub_name;	// 번호로 이름 가져오기
	private String category_name;// 번호로 이름 가져오기
	private String contents;
	
	private List<BookImgVO> imgs = new ArrayList<>();
	
}

package com.goodibooks.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QnAVO {

	private int no;
	private String title;
	private String content;
	private Date regDate;
	private Date updateDate;
	private boolean deleted;
	private String id;
	private String qnaType;
}

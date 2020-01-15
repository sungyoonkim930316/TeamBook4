package com.goodibooks.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private int re_no;
	private int rate;
	private String title;
	private String contetnt;
	private Date writeDate;
	private boolean deleted;
	
	
}

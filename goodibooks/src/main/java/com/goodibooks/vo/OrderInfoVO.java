package com.goodibooks.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderInfoVO {

	private int no;
	private Date payDate;
	private int af_price;
	private String id;
	private int ship_no;
	
}

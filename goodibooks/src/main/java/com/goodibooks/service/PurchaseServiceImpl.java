package com.goodibooks.service;

import com.goodibooks.mapper.PurchaseMapper;

import lombok.Setter;

public class PurchaseServiceImpl implements PurchaseService {
	
	@Setter
	private PurchaseMapper purchaseMapper;

}

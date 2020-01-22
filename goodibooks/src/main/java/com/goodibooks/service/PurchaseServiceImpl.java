package com.goodibooks.service;

import com.goodibooks.mapper.CartMapper;
import com.goodibooks.mapper.PurchaseMapper;
import com.goodibooks.vo.OrderDetailVO;
import com.goodibooks.vo.OrderInfoVO;

import lombok.Setter;

public class PurchaseServiceImpl implements PurchaseService {
	
	@Setter
	private PurchaseMapper purchaseMapper;
	
	@Setter
	private CartMapper cartMapper;

	@Override
	public int orderInfoPlus(OrderInfoVO order_info) {
		purchaseMapper.orderInfoPlus(order_info);
		
		String order_id = order_info.getId();
		
		cartMapper.deleteCartById(order_id);
		
		return order_info.getNo();
	}

//	@Override
//	public void deleteOrder(int no) {
//		purchaseMapper.deleteOrder(no);
//		
//	}

//	@Override
//	public int orderDetailPlus(OrderDetailVO order_detail) {
//		purchaseMapper.orderDetailPlus(order_detail);
//		return order_detail.getDetail_no();
//	}

}

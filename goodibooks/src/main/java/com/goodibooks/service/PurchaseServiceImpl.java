package com.goodibooks.service;

import java.util.List;

import com.goodibooks.mapper.CartMapper;
import com.goodibooks.mapper.PurchaseMapper;
import com.goodibooks.vo.CartListVO;
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

	@Override
	public int purchaseBook(OrderDetailVO detail) {
		
		String id = detail.getId();

		purchaseMapper.insertOrder(id);
		purchaseMapper.insertOrderDeatil(detail);
		
		return detail.getDetail_no();
	}

	@Override
	public int purchaseCartList(OrderDetailVO detail) {
		
		String id = detail.getId();
		
		// 장바구니 목록 가져오기
		List<CartListVO> carts = cartMapper.selectCartByMemberId(id);
		
		// Order
		purchaseMapper.insertOrder(id);
		
		// Order_detail에 데이터 복사
		purchaseMapper.insertCartList(carts);
		
		return 0;
	}

	@Override
	public List<OrderInfoVO> showCheckoutList(String id) {
		
		return purchaseMapper.selectCheckoutList(id);
	}



}

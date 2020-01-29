package com.goodibooks.service;

import java.util.List;

import com.goodibooks.vo.CartListVO;
import com.goodibooks.vo.OrderDetailVO;
import com.goodibooks.vo.OrderInfoVO;

public interface PurchaseService {

	int orderInfoPlus(OrderInfoVO order_info);

	int purchaseBook(OrderDetailVO detail);

	int purchaseCartList(OrderDetailVO detail);

	List<OrderInfoVO> showCheckoutList(String id);





}

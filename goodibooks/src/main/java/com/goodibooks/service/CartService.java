package com.goodibooks.service;

import java.util.List;

import com.goodibooks.vo.CartListVO;

public interface CartService {

	void insertCartByMemberId(CartListVO cart);
	List<CartListVO> showCartListByMemberId(String id);
}

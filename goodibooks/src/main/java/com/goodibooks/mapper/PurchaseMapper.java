package com.goodibooks.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.OrderDetailVO;
import com.goodibooks.vo.OrderInfoVO;

@Mapper
public interface PurchaseMapper {

	void orderInfoPlus(OrderInfoVO order_info);

//	void orderDetailPlus(OrderDetailVO order_detail);

}

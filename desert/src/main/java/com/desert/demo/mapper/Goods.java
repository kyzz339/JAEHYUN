package com.desert.demo.mapper;

import com.desert.demo.dto.DTOMember;

public interface Goods {
	public int insertGoods();
	public int deleteGoods();
	public int updateGoods();
	public DTOMember getInfoGoods();
	public int goodsCheck();
}


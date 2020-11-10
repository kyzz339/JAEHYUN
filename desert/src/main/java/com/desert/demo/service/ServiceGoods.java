package com.desert.demo.service;

import com.desert.demo.dto.DTOMember;

public interface ServiceGoods {
	public int insertGoods();
	public int deleteGoods();
	public int updateGoods();
	public DTOMember getInfoGoods();
	public int goodsCheck();
}

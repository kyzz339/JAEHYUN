package com.desert.demo.dao;

import com.desert.demo.dto.DTOMember;

public interface DAOGoods {
	public int insertGoods();
	public int deleteGoods();
	public int updateGoods();
	public DTOMember getInfoGoods();
	public int goodsCheck();
}


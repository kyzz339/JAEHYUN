package com.desert.demo.mapper;

import com.desert.demo.dto.DTOGoods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface GoodsMapper {
	public int insertGoods(DTOGoods goods);
	public int deleteGoods(@Param("idx")int idx);
	public int updateGoods(DTOGoods goods);
	public DTOGoods getInfoGoods(@Param("idx")int idx);
	public ArrayList<DTOGoods> goodsList();
	public int goodsCheck();
	public ArrayList<DTOGoods> searchGoods(@Param("search")String search);
}


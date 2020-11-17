package com.desert.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.desert.demo.dto.DTOCart;

// DAO : DB와 매핑해서 쿼리문의 결과를 가져옴
@Mapper
public interface CartMapper {
	public int insertCart();
	public int deleteCart();
	public ArrayList<DTOCart> listCartDao(); // 장바구니 상품정보들
	public int updateCart();
	public int cartCheck();
	public int totalAmount();

}

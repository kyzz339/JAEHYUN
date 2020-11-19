package com.desert.demo.mapper;

import com.desert.demo.dto.DTOCart;

public interface CartMapper {
	public int insertCart();
	public int deleteCart();
	public DTOCart getCartInfo();
	public int updateCart();
	public int cartCheck();
	public int totalAmount();

}

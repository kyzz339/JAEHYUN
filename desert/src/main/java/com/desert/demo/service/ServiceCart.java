package com.desert.demo.service;

import com.desert.demo.dto.DTOCart;

public interface ServiceCart {
	public int insertCart();
	public int deleteCart();
	public DTOCart getCartInfo();
	public int updateCart();
	public int cartCheck();
	public int totalAmount();

}

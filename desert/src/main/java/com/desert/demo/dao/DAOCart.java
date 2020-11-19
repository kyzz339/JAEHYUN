package com.desert.demo.dao;

import com.desert.demo.dto.DTOCart;

public interface DAOCart {
	public int insertCart();
	public int deleteCart();
	public DTOCart getCartInfo();
	public int updateCart();
	public int cartCheck();
	public int totalAmount();

}

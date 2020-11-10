package com.desert.demo.mapper;

import java.util.ArrayList;

import com.desert.demo.dto.DTOPayment;

public interface Payment {
	public int insertPayment();
	public int deletePayment();
	public DTOPayment getInfoPayment();
	public ArrayList<DTOPayment>listPayment();
	public int updatePayment();

}

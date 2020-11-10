package com.desert.demo.service;

import java.util.ArrayList;

import com.desert.demo.dto.DTOPayment;

public interface ServicePayment {
	public int insertPayment();
	public int deletePayment();
	public DTOPayment getInfoPayment();
	public ArrayList<DTOPayment>listPayment();
	public int updatePayment();
}

package com.desert.demo.service2;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOCart;
import com.desert.demo.mapper.CartMapper;

@Service
public class ServiceCartListImpl implements ServiceCartList{
	
	// DAO주입
	@Autowired
	CartMapper cartmapper;
	
	public ArrayList<DTOCart> ListCart() {
		// DB에 접근하기 위해 DAO에 접근
		ArrayList<DTOCart> list = cartmapper.listCartDao();
		
		return list;
	}
}

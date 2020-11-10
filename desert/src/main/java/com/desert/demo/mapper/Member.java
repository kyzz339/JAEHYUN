package com.desert.demo.mapper;

import com.desert.demo.dto.DTOMember;

public interface Member {
	 public int insertMember();
	 public DTOMember getUserInfo();
	 public int deleteMember();
	 public int updateMember();
	 
	 public int loginCheck();
	 public int idCheck();
	 
	 public int emailCheck();
	 public int busLisenceCheck();
	 public int logout();
	 public int paymentTotal();

	 
}

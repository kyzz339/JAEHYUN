package com.desert.demo.loginService;

import org.springframework.beans.factory.annotation.Autowired;

import com.desert.demo.dao.DAOMember;
import com.desert.demo.dto.DTOMember;

public class LoginImpl implements Login {

	@Autowired
	DAOMember memberMapper;
	@Autowired
	DTOMember dtoMember;
	
	@Override
	public int login(String id, String pw) {
		int nResult = memberMapper.login(id, pw);
		return nResult;
	}

}

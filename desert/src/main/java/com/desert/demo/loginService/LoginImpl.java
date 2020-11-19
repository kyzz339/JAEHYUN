package com.desert.demo.loginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

@Service
public class LoginImpl implements Login {

	@Autowired
	MemberMapper daoMember;
	@Autowired
	DTOMember dtoMember;
	
	@Override
	public int login(String id, String pw) {
		int nResult = daoMember.login(id, pw);
		return nResult;
	}

}

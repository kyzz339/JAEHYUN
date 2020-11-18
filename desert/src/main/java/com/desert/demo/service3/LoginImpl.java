package com.desert.demo.service3;

import org.springframework.beans.factory.annotation.Autowired;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

public class LoginImpl implements Login {

	@Autowired
	MemberMapper memberMapper;
	@Autowired
	DTOMember dtoMember;
	
	@Override
	public int login(String id, String pw) {
		int nResult = memberMapper.login(id, pw);
		return nResult;
	}

}

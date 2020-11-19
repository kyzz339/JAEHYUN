package com.desert.demo.loginService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;


@Service
public class LoginImpl implements Login{

	@Autowired
	MemberMapper daoMember;
	@Autowired
	DTOMember dtoMember;

	@Override
	public int login(HttpServletRequest req) {
		
		dtoMember.setId(req.getParameter("id"));
		dtoMember.setPw(req.getParameter("pw"));
//	 	String id = req.getParameter("id");
//		String pw = req.getParameter("pw");
		
		
		int nResult = daoMember.login(dtoMember);
		
		
		
		return nResult;
	}

}

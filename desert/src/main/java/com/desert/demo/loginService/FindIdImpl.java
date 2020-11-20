package com.desert.demo.loginService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

@Service
public class FindIdImpl implements FindId {

	@Autowired
	MemberMapper mapper;
	
	@Override
	public String doFindId(HttpServletRequest req) {
	
		String name = req.getParameter("name");
		String email = req.getParameter("email");

		return 	mapper.getID(name, email).getId();
	}

}

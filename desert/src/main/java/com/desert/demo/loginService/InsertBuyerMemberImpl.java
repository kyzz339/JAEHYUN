package com.desert.demo.loginService;

import java.time.LocalDate;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

public class InsertBuyerMemberImpl implements InsertBuyerMember {
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	DTOMember dtoMember;
	
	public int makeVerifyCode() {
		// verifi code 난수 생성기
		Random random = new Random();
		// 0~999999 생성
		int num =random.nextInt(999999);
		 return num;
	}
	
	@Override
	public int insertBuyerMember(HttpServletRequest req) {

		dtoMember.setName(req.getParameter("name"));
		dtoMember.setId(req.getParameter("id"));
		dtoMember.setPw(req.getParameter("pw"));
		dtoMember.setEmail(req.getParameter("email"));
		dtoMember.setPhone(req.getParameter("phone"));
		dtoMember.setAddress(req.getParameter("address"));
		dtoMember.setRegdate(LocalDate.now());
		dtoMember.setVerifiCode(makeVerifyCode());
		dtoMember.setDoPromotion(req.getParameter("promotion"));
		
		int nResult = memberMapper.insertMember(dtoMember);
		return nResult;
	}

}

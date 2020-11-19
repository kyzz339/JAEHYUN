package com.desert.demo.loginService;

import java.time.LocalDate;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

public class BuyerMemberImpl implements BuyerMember {

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

		dtoMember.setType(0);
		dtoMember.setName(req.getParameter("name"));
		dtoMember.setId(req.getParameter("id"));
		dtoMember.setPw(req.getParameter("pw"));
		dtoMember.setEmail(req.getParameter("email"));
		dtoMember.setPhone(req.getParameter("phone"));
		dtoMember.setAddress(req.getParameter("address"));
		dtoMember.setRegdate(LocalDate.now());
		dtoMember.setTotalPoint(0);
		dtoMember.setVerifiCode(makeVerifyCode());
		dtoMember.setDoPromotion(req.getParameter("promotion"));
		
		int nResult = memberMapper.insertMember(dtoMember);
		return nResult;
	}

}
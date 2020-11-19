package com.desert.demo.loginService;

import java.time.LocalDate;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

@Service
public class InsertBuyerMemberImpl implements InsertBuyerMember {
	
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	DTOMember dtoMember;
	
//	public int makeVerifyCode() {
//		// verifi code 난수 생성기
//		Random random = new Random();
//		// 0~999999 생성
//		int num =random.nextInt(999999);
//		 return num;
//	}
	
	@Override
	public int insertBuyerMember(HttpServletRequest request) {

		dtoMember.setName(request.getParameter("name"));
		dtoMember.setId(request.getParameter("id"));
		dtoMember.setPw(request.getParameter("pw"));
		dtoMember.setEmail(request.getParameter("email"));
		dtoMember.setPhone(request.getParameter("phone"));
		dtoMember.setAddress(request.getParameter("address1"));
//		dtoMember.setAddress(request.getParameter("address2"));
//		dtoMember.setAddress(request.getParameter("address3"));
		dtoMember.setRegdate(LocalDate.now());
//		dtoMember.setVerifiCode(makeVerifyCode());
		dtoMember.setDoPromotion(request.getParameter("promotion"));
		
		int nResult = memberMapper.insertMember(dtoMember);
		if(nResult == 1) {
			System.out.println("가입 성공");
		} else {
			System.out.println("가입 실패");
		}
		return nResult;
	}

}

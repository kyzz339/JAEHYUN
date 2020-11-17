package com.desert.demo.service3;

import com.desert.demo.dto.DTOMember;

public interface Login {

//아이디, 비밀번호 일치 체크
public Boolean idPwCheck(String id, String pw);
	
//이메일 인증여부 체크
public Boolean emailCheck(DTOMember member);
	
//차단(블록) 아이디 체크
public Boolean blockCheck(DTOMember member);
	
// 판매자 미승인 아이디 체크
public Boolean sellerAprpovalCheck(DTOMember member);

//마이페이지 들어가기전 비밀번호 확인 
public Boolean doPassCheck(String pw);
	
//로그인 메소드
public Boolean doLogin(String id, String pw);

}

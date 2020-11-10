package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOMember {
	int index;
	String grade;//등급
	String name;
	String email;
	String pw;
	String id;
	String phone;
	String address;
	String mCag;//멤버 카테고리
	String busLisence;//사업자 등록번호
	int totalPoint;
	boolean noBlock;
	int totalPriceAmount;
	Date regDate;

}

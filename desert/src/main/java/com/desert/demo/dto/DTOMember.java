package com.desert.demo.dto;

import java.time.LocalDate;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class DTOMember {
	private int idx;
	private int type;
	private String name;
	private String id;
	private String pw;
	private String email;
	private String phone;
	private String address;
	private String businessLicense;
	private String doBlock;
	private int totalGoodsIdx;
	private int totalAmount;
	private LocalDate regdate;
	private int totalPoint;
	private int couponIdx;
	private String grade;
	private int buyGoodsIdx;
	private int verifiCode;
	private String doPromotion;

}

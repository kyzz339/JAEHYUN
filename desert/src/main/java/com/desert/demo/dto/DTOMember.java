package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

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
	private String business_license;
	private String do_block;
	private int total_goods_idx;
	private int total_amount;
	private LocalDate regdate;
	private int total_point;
	private int coupon_idx;
	private String grade;
	private int buy_goods_idx;
	private int verifi_code;
	private String do_promotion;

}

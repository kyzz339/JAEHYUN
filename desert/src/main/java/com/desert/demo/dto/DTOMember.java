package com.desert.demo.dto;

import java.time.LocalDate;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
@Data
public class DTOMember {
	private int idx;
	private String name;
	private String id;
	private String pw;
	private String email;
	private String phone;
	private String address;
	private LocalDate regdate;
	private int buyGoodsIdx;
	private int verifiCode;
	private String doPromotion;
}

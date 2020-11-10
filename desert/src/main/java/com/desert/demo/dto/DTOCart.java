package com.desert.demo.dto;

import lombok.Data;

@Data
public class DTOCart {
	int cartIndex;
	String memberId;
	int goodsIndex;
	int goodsAmount;
	int totalDiscount;
	int totalNetPrice;

}

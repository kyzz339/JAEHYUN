package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOProductOrderList {
	private int idx;
	private int orderNumber;
	private int goodsPrice;
	private int goodsAmount;
	private int memberIdx;
	private LocalDate orderCheckTime;
	private LocalDate deliveryStartTime;
	private String doRefund;
	private String deliveryStatus;
	private int trackingNumber;
}

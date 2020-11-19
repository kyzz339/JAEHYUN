package com.desert.demo.dto;

import java.time.LocalDate;

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

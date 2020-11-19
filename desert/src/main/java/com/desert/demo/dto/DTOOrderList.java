package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOOrderList {
	private int idx;
	private int orderNumber;
	private LocalDate orderDate;
	private int finalPrice;
	private String receiverName;
	private String receiverAddress;
	private String receiverPhone;
	private String requestContent;
	private String payMethod;
	private int memberIdx;
}

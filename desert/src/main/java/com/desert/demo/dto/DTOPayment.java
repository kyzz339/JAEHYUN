package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOPayment {
	int index;
	int payNum;
	String payState;
	int resultPrice;
	int usedPoint;
	int deliveryFee;
	int savePoint;
	String payType;
	Date payTime;

}

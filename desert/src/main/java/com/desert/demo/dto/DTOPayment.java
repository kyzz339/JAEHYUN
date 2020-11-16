package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;
//DB테이블에 없어서 수정하지 않음^^
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

package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOPoint {
	int index;
	Date date;
	int savePoint;//적립혹은 사용포인트
	String pointContent;
	

}

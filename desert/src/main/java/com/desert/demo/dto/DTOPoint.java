package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOPoint {
	int index;
	LocalDate date;
	int savePoint;//적립혹은 사용포인트
	String pointContent;
	

}

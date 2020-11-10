package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTONotice {
	int index;
	String title;
	String contents;
	Date date;
	String weight;

}

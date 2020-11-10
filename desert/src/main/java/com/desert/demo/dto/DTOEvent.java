package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOEvent {
	int index;
	String contents;
	String title;
	String file;
	Date date;
	String condition;
	String category;

}

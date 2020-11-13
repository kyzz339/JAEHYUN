package com.desert.demo.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.Data;

@Data
public class DTONotice {
	int index;
	String title;
	String contents;
	Timestamp date;
	String urgent;
}

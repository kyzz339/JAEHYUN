package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTONotice {
	private int index;
	private String title;
	private String contents;
	private LocalDate date;
	private String urgent;
}

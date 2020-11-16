package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOEvent {
	private int index;
	private String title;
	private LocalDate regdate;
	private String imgUrl;
	private String imgName;
	

}

package com.desert.demo.dto;

import java.time.LocalDate;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
@Data
public class DTOGoods {
	private int idx;
	private String category;
	private String name;
	private int  price;
	private String contents; 
	private LocalDate regdate; 
	private int hit;
	private String imgName;
	private String imgUrl;
}

package com.desert.demo.dto;

import java.time.LocalDate;
import lombok.Data;

@Data
public class DTOGoods {
	private int index;
	private String category;
	private int sellerIdx; 
	private String name;
	private int  netPrice;
	private String weightUnit; 
	private String contents; 
	private int stock; 
	private int discountRate; 
	private int finalPrice;
	private String doDiscount; 
	private LocalDate regdate; 
	private int hit;  
	private int salesAmount; 
	private int doSale; 
	private String imgName;
	private String imgUrl; 

}

package com.desert.demo.dto;

import java.time.LocalDate;
import lombok.Data;

@Data
public class DTOGoods {
	private int idx;
	private String category;
	private int seller_idx; 
	private String name;
	private int  net_price;
	private String weight_unit; 
	private String contents; 
	private int stock; 
	private int discount_rate; 
	private int final_price;
	private String do_discount; 
	private LocalDate regdate; 
	private int hit;  
	private int sales_amount; 
	private int do_sale; 
	private String img_name;
	private String img_url; 

}

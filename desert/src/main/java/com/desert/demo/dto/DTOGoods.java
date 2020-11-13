package com.desert.demo.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class DTOGoods {
	int idx;
	String category;
	int seller_idx; 
    String name;
    int  net_price;
    String weight_unit; 
    String contents; 
    int stock; 
    int discount_rate; 
    int final_price;
    String do_discount; 
    Timestamp regdate; 
    int hit;  
    int sales_amount; 
    int do_sale; 
    String img_name;
    String img_url; 

}

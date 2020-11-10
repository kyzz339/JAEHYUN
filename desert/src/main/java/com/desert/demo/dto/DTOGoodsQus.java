package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOGoodsQus {
	int index;
	String writer;
	String goodsname;
	String category;
	Date date;
	
	String seller;
	String replyTitle;
	String replyContent;
	Date replyDate;
	int replyIndex;

}

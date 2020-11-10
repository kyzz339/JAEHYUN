package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOReview {
	
	int index;
	Date date;
	String goodsName;
	String title;
	String contents;
	String file;
	int hits;
	String writer;
	
	Date replyDate;
	String replyTitle;
	String replyContents;
	int replyIndex;
	int totalReview;
 
}

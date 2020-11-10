package com.desert.demo.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DTOPerQus {
	int index;
	Date date;
	String category;
	boolean noReply;
	int totalQus;
	String writer;
	
	Date replyDate;
	String replyTitle;
	String replyContents;
	int replyIndex;



}

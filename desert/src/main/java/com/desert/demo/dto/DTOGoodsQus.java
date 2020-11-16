package com.desert.demo.dto;
import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOGoodsQus {
	private int index;
	private String writerId; 
	private int goodsIndex; 
	private String category;
	private LocalDate regdate;
	private String questionContents;
	private String questionTitle;
	private String sellerId;
	private LocalDate replyDate;
	private String answerContents;
	private String imgName;
	private String imgUrl;

}

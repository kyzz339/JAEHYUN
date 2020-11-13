package com.desert.demo.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.Data;

@Data
public class DTOGoodsQus {
	int idx;
	String dwriter_id; 
	int dgoods_idx; 
	String category;
	Timestamp regdate;
	String question_contents;
	String question_title;
	String seller_id;
	Timestamp reply_date;
	String answer_contents;
	String img_name;
	String img_url;

}

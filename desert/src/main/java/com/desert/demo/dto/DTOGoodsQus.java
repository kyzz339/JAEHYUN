package com.desert.demo.dto;
import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOGoodsQus {
	private int idx;
	private String dwriter_id; 
	private int dgoods_idx; 
	private String category;
	private LocalDate regdate;
	private String question_contents;
	private String question_title;
	private String seller_id;
	private LocalDate reply_date;
	private String answer_contents;
	private String img_name;
	private String img_url;

}

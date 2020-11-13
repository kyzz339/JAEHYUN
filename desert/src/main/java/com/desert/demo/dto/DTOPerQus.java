package com.desert.demo.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class DTOPerQus {

	private int idx;
	private Timestamp question_date;
	private String category;
	private String reply;
	private String member_id;
	private String answer_contents;
	private String question_contents;
	private String question_title;
	private Timestamp reply_date;

}

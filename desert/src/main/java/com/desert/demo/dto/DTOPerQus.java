package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOPerQus {

	private int idx;
	private LocalDate question_date;
	private String category;
	private String reply;
	private String member_id;
	private String answer_contents;
	private String question_contents;
	private String question_title;
	private LocalDate reply_date;

}

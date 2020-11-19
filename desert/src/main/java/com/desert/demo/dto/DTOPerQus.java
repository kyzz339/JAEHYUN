package com.desert.demo.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOPerQus {

	private int idx;
	private LocalDate questionDate;
	private String reply;
	private String memberId;
	private String answerContents;
	private String questionContents;
	private String questionTitle;
	private LocalDate replyDate;

}

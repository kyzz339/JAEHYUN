package com.desert.demo.dto;

import java.time.LocalDate;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
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

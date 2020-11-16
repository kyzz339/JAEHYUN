package com.desert.demo.dto;
import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOReview {

	private int index;
	private String writerId;
	private LocalDate date;
	private String title;
	private String contents;
	private int hit;
	private String imgName;
	private String imgUrl;

}

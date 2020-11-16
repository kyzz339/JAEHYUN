package com.desert.demo.dto;
import java.time.LocalDate;

import lombok.Data;

@Data
public class DTOReview {

	private int idx;
	private String writer_id;
	private LocalDate date;
	private String title;
	private String contents;
	private int hit;
	private String img_name;
	private String img_url;

}

package com.desert.demo.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.Data;

@Data
public class DTOReview {

	private int idx;
	private String writer_id;
	private Timestamp date;
	private String title;
	private String contents;
	private int hit;
	private String img_name;
	private String img_url;

}

package com.desert.demo.dto;



import java.sql.Timestamp;

import lombok.Data;

@Data
public class DTOEvent {
	int index;
	String title;
	Timestamp regdate;
	String img_url;
	String img_name;
	

}

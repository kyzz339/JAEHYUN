package com.desert.demo.mapper;

import com.desert.demo.dto.DTOEvent;

public interface Event {
	public int insertEvent();
	public int deleteEvent();
	public int modifyEvent();
	public DTOEvent listEvent();
	//contentEvent();이게 뭐지 왜있지??
	public int totalList();

}

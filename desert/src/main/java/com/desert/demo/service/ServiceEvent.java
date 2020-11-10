package com.desert.demo.service;

import com.desert.demo.dto.DTOEvent;

public interface ServiceEvent {
	public int insertEvent();
	public int deleteEvent();
	public int modifyEvent();
	public DTOEvent listEvent();
	public int totalList();
}

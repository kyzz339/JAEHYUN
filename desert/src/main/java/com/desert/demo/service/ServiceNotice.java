package com.desert.demo.service;

import java.util.ArrayList;

import com.desert.demo.dto.DTONotice;

public interface ServiceNotice {
	public int insertNotice();
	public int deleteNotice();
	public ArrayList<DTONotice> listNotice();
	public int modifyNotice();
	public int totalNotice();
}

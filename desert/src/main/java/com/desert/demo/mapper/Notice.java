package com.desert.demo.mapper;

import java.util.ArrayList;

import com.desert.demo.dto.DTONotice;

public interface Notice {
	public int insertNotice();
	public int deleteNotice();
	public ArrayList<DTONotice> listNotice();
	//contentNotice(); 뭐지..필요여부에 따라 삭제
	public int modifyNotice();
	public int totalNotice();

}

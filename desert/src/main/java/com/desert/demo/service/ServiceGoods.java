package com.desert.demo.service;

import com.desert.demo.dto.DTOGoods;
import com.desert.demo.dto.DTOMember;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

public interface ServiceGoods {
	public int insertGoods(HttpServletRequest req, MultipartFile file) throws IOException;
	public int deleteGoods(int idx);
	public int updateGoods(HttpServletRequest req,MultipartFile file) throws IOException;
	public DTOGoods getInfoGoods(int idx);
	//갯수 세기
	public int goodsCount();
	public ArrayList<DTOGoods> goodsList();
	//검색
	public ArrayList<DTOGoods>goodsSearch(String search);
}

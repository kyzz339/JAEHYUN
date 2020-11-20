package com.desert.demo.loginService;

import javax.servlet.http.HttpServletRequest;

import com.desert.demo.dto.DTOMember;

public interface Login {
	public int login(HttpServletRequest req);
}

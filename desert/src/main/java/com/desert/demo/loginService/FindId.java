package com.desert.demo.loginService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public interface FindId {
	public String doFindId(HttpServletRequest req);
}

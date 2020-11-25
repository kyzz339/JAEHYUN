package com.desert.demo.loginService;

import com.desert.demo.dto.DTOMember;

import javax.servlet.http.HttpServletRequest;

public interface FindPW {
    public DTOMember findPw(HttpServletRequest req);
    public int pwReset(String id,String pw);
}

package com.desert.demo.loginService;

import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMember;

@Service
public interface GetMemberInfo {
	public DTOMember getMemberInfo(String id);
}

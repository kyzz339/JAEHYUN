package com.desert.demo.loginService;

import org.apache.ibatis.annotations.Param;

import com.desert.demo.dto.DTOMember;

public interface GetMemberInfo {
	public DTOMember getMemberInfo(@Param("id") String id);

}

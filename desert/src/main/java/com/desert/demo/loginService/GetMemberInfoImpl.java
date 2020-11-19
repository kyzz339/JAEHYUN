package com.desert.demo.loginService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

public class GetMemberInfoImpl implements GetMemberInfo {
    @Autowired
    MemberMapper mapper;
    
	@Override
	public DTOMember getMemberInfo(@Param("id") String id) {
	
		return mapper.getMemberInfo(id);
	}

}

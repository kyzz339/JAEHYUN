package com.desert.demo.loginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;

@Service
public class GetMemberInfoImpl implements GetMemberInfo {
    @Autowired
    MemberMapper mapper;
    
    @Autowired
    DTOMember dtoMember;
    
	@Override
	public DTOMember getMemberInfo(String id) {
		dtoMember = mapper.getMemberInfo(id);
		return dtoMember;
	}

}

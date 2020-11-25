package com.desert.demo.loginService;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
@Service
public class FindPwImpl implements FindPW{

@Autowired
    DTOMember member;
    @Autowired
    MemberMapper mapper;

    @Override
    public DTOMember findPw(HttpServletRequest req) {
        member.setId(req.getParameter("id"));
        member.setName(req.getParameter("name"));
        member.setEmail(req.getParameter("email"));

        return mapper.findPW(member);

    }

    @Override
    public int pwReset(String id, String pw) {
        int result=mapper.pwReset(id,pw);
        return result;
    }



}

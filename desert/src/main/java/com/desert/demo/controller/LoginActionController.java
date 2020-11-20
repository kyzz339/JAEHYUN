package com.desert.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.loginService.GetMemberInfo;
import com.desert.demo.loginService.GetMemberInfoImpl;
import com.desert.demo.loginService.LoginImpl;
import com.desert.demo.mapper.MemberMapper;

@Controller
public class LoginActionController {
//	======================
// 최현석컨트롤러 : 서비스, 비즈니스 로직 매핑
//	======================

 	@Autowired
 	MemberMapper memberMapper;
 	
 	@Autowired
 	DTOMember dtoMember;
 	
 	@Autowired
 	LoginImpl login;
	
//	   로그인 액션
	    @RequestMapping("/loginAction")
	    public String loginAction(HttpServletRequest req,Model model) {
	    	String id=req.getParameter("id");
	    	int nResult = login.login(req);
	    	System.out.println("결과는"+nResult);
	    	System.out.println("id"+id);

//
//	    	String test1 = req.getSession().getAttribute(id);
	    			
	    	if(nResult<=0) {
	    		System.out.println("로그인 실패");
	    		model.addAttribute("msg","로그인 실패 - 아이디나 암호를 확인해주세요");
	    		model.addAttribute("url","/login");
	    	}else {
	    		System.out.println("로그인 성공");
	    		
	    		GetMemberInfo getMemberInfo = new GetMemberInfoImpl();
	    		
	    		HttpSession session = req.getSession();
	    		
	    		session.setAttribute("sessionID", req.getParameter("id"));
	    		
	    		
//	    		dtoMember=getMemberInfo.getMemberInfo(req.getParameter("id"));
	    		System.out.println(dtoMember.getId());
//    		String id=req.getSession().getAttribute("sessionID").toString();
	    		
		   		model.addAttribute("msg",session.getAttribute("sessionID")+"님 로그인 되셨습니다.");
		   		model.addAttribute("url","/");
	    	}
	    	
	    	return "redirect";
	    }
	    
//	   세션에 멤버 정보 저장
	    @RequestMapping("/getMemberInfoAction")
	    public String getMemberInfoAction(HttpServletRequest req, RedirectAttributes redirect) {
	    	String id = req.getSession().getAttribute("sessionID").toString();
	    	
	    	DTOMember dtoMember = memberMapper.getMemberInfo(id);
	    	
	    	req.getSession().setAttribute("memberInfo", dtoMember);
	    
	    	return "redirect:mainForm";
	    }
	    
//	   로그아웃 액션
	    @RequestMapping("/logout")
	    public String logout(HttpServletRequest req, RedirectAttributes redirect) {

				System.out.println("로그아웃 성공");
				
				// 로그아웃시 세션정보를 모두 삭제한다.
				req.getSession().invalidate();
				
				redirect.addAttribute("msg","로그아웃 성공");
				redirect.addAttribute("url","/");
			
			return "redirect:mainForm";
	    }

	
}

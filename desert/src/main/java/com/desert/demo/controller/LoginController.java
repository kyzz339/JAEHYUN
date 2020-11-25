package com.desert.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.loginService.InsertBuyerMember;

@Controller
public class LoginController {

	@Autowired
	InsertBuyerMember ibmember;

//		======================
	 // 로그인 컨트롤러 
//	 	======================

	    @RequestMapping("/joinForm")
	    public String BuyerJoinForm(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/joinForm.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping(value = "/joinFormAction", method = RequestMethod.GET)
	    public String joinFormAction(HttpServletRequest request) {
	    	// joinForm.jsp에서 넘어온 값들을 넘겨준다.
	    	String name = request.getParameter("name");
	    	System.out.println("넘어온값 : " + name);
	    	ibmember.insertBuyerMember(request);
	    	return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/findID")
	    public String cmFindID(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/findID.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/findIDResult")
	    public String cmFindIDResult(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/findIDResult.jsp");
	        return "redirect:mainForm";
	    }

	    @RequestMapping("/findPW")
	    public String cmFindPW(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/findPW.jsp");
	        return "redirect:mainForm";
	    }

	    @RequestMapping("/findPWResult")
	    public String cmFindPWResult(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/findPWResult.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/login")
	    public String cmLogin(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/login.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/passwordCheck")
	    public String cmPasswordCheck(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/passwordCheck.jsp");
	        return "redirect:mainForm";
	    }
}

package com.desert.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.dao.DAOMember;
import com.desert.demo.dto.DTOMember;

@Controller
public class Controller3 {
//	======================
// 최현석컨트롤러 : 뷰페이지 매핑
//	======================
	
	    @GetMapping("/")
	    public String root() throws Exception {
	        return "redirect:mainForm";
	    }

	    @GetMapping("/mainForm")
	    public String MainForm() {
	        return "mainForm"; //mainForm.jsp 호출
	    }

//		======================
	 // 로그인 컨트롤러 
//	 	======================

	    @RequestMapping("/buyerJoinForm")
	    public String BuyerJoinForm(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/buyerJoinForm.jsp");
	        return "redirect:mainForm";
	    }
	    
	    
	    
	    @RequestMapping("/cmFindID")
	    public String cmFindID(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmFindID.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/cmFindIDResult")
	    public String cmFindIDResult(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmFindIDResult.jsp");
	        return "redirect:mainForm";
	    }

	    @RequestMapping("/cmFindPW")
	    public String cmFindPW(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmFindPW.jsp");
	        return "redirect:mainForm";
	    }

	    @RequestMapping("/cmFindPWResult")
	    public String cmFindPWResult(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmFindPWResult.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/cmJoinForm")
	    public String cmJoinForm(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmJoinForm.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/cmLogin")
	    public String cmLogin(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmLogin.jsp");
	        
	        return "redirect:getMemberInfo";
	    }
	    
	    @RequestMapping("/cmPasswordCheck")
	    public String cmPasswordCheck(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/cmPasswordCheck.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/sellerJoinForm")
	    public String sellerJoinForm(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "login/sellerJoinForm.jsp");
	        return "redirect:mainForm";
	    }
	    
	    
//		======================
	 // 마이페이지 정보수정 매핑 
//	 	======================
	    
	    @RequestMapping("/buyerMyPageModify")
	    public String buyerMyPageModify(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "myPage/buyerPage/buyerMyPageModify.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @RequestMapping("/sellerMyPageModify")
	    public String sellerMyPageModif(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "myPage/sellerPage/sellerMyPageModify.jsp");
	        return "redirect:mainForm";
	    }
	    
	    
}

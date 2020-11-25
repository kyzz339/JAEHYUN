package com.desert.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminMyPageController {

//	관리자 페이지 컨트롤러 
	
	@RequestMapping("/buyerManage")
	public String buyerManage (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/adminPage/buyerManage.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/goodsDelivery")
	public String goodsDelivery (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/adminPage/goodDelivery.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/goodsRegForm")
	public String goodsRegForm (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/adminPage/goodRegForm.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/goodsRegList")
	public String goodsRegList (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/adminPage/goodsRegList.jsp");
		return "redirect:mainForm";
	}
	
}

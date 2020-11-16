package com.desert.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class Controller2 {
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:mainForm";
	}

	@RequestMapping("/mainForm")
	public String MainForm() {
		return "mainForm"; // mainForm.jsp 호출
	}

	@RequestMapping("/buyerCart")
	public String BuyerOderList(RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/buyerPage/buyerCart.jsp");
		return "redirect:mainForm";
	}

	@RequestMapping("/buyerOrderForm")
	public String buyerOrderForm(RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/buyerPage/buyerOrderForm.jsp");
		return "redirect:mainForm";
	}

	@RequestMapping("buyerOrderComplete")
	public String buyerOrderComplete(RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/buyerPage/buyerOrderComplete.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/buyerOrderList")
	public String buyerOrderList(RedirectAttributes redirect) {
		redirect.addAttribute("contentPage","myPage/buyerPage/buyerOrderList.jsp");
		return "redirect:home";
	}

//	=============================
//  헤더, 푸터 , 사이드바 매핑
//	=============================
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footerMapping() {
		// 비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		// 서비스는 매퍼랑 직접 붙는다
		//
		return "/cmPage/footer";
	}

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String headerMapping() {
		// 비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		// 서비스는 매퍼랑 직접 붙는다
		//
		return "/cmPage/header";
	}

	@RequestMapping(value = "/sidebar", method = RequestMethod.GET)
	public String sidebarMapping() {
		// 비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		// 서비스는 매퍼랑 직접 붙는다
		//
		return "/cmPage/sidebar";
	}
}

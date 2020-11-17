package com.desert.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.dto.DTOCart;
import com.desert.demo.service2.ServiceCartList;

@Controller
public class Controller2 {
	
	@Autowired
	ServiceCartList servicecartlist;
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:mainForm";
	}

	@RequestMapping("/mainForm")
	public String MainForm() {
		return "mainForm"; // mainForm.jsp 호출
	}

	@RequestMapping("/buyerCart")
	public String BuyerOderList(RedirectAttributes redirect, HttpServletRequest request) {
		
		redirect.addAttribute("contentPage", "myPage/buyerPage/buyerCart.jsp");
		// 장바구니 버튼을 눌렀을때 cart테이블에 저장되어있는 상품 정보를 list로 뿌려주기 위한 서비스호출 로직
		ArrayList<DTOCart> list = servicecartlist.ListCart();
		// 비즈니스 로직을 완료 후 ArratList레퍼런스에 담은 값을 뷰페이지에서 list키값으로 찾기위한 로직
		request.getSession().setAttribute("list", list);
		
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
		return "redirect:mainForm";
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

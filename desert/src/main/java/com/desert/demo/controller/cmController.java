package com.desert.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class cmController {
	
    @GetMapping("/")
    public String root() throws Exception {
        return "redirect:mainForm";
    }

    @GetMapping("/mainForm")
	public String MainForm( HttpServletRequest req ) {
					
		System.out.println( "msg:" + req.getParameter("msg"));
		req.getSession().setAttribute("msg", req.getParameter("msg"));

        return "mainForm"; //mainForm.jsp 호출
    }
	
	@RequestMapping("/introCompany")
	public String introCompany (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "main/introCompany.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/productDetail")
	public String productDetail (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "main/productDetail.jsp");
		return "redirect:mainForm";
	}

}

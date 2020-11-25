package com.desert.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class BuyerMyPageController {

// 구매자 마이페이지 컨트롤러 
    
    @RequestMapping("/myPageModify")
    public String buyerMyPageModify(RedirectAttributes redirect) {
        redirect.addAttribute("contentPage", "myPage/buyerPage/myPageModify.jsp");
        return "redirect:mainForm";
    }
    
	@RequestMapping("/cart")
	public String cart (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/buyerPage/cart.jsp");
		return "redirect:mainForm";
	}

}

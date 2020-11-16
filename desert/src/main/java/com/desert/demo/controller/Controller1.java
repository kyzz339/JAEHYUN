package com.desert.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class Controller1 {
    @GetMapping("/")
    public String root() throws Exception {
        return "redirect:mainForm";
    }

    @GetMapping("/mainForm")
    public String MainForm() {
        return "mainForm"; //mainForm.jsp 호출
    }

    @RequestMapping("/20")
    public String BuyerOderList(RedirectAttributes redirect) {
        redirect.addAttribute("contentPage", "myPage/buyerOrderForm.jsp");
        return "redirect:mainForm";

    }
}

package com.desert.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.QuestionService.QuestionService;
import com.desert.demo.dto.DTOPerQus;
import com.desert.demo.mapper.QuestionMapper;

@Controller
public class QuestionController {

	@Autowired
	QuestionMapper mapper;
	
	@Autowired
	QuestionService questionService;
	
	
	@RequestMapping("/questionDetail")
	public String questionDetail (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/questionPage/questionDetail.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/buyerQuestionList")
	public String buyerQuestionList (HttpServletRequest req, RedirectAttributes redirect) {
		
		HttpSession session = req.getSession();		
		
		List<DTOPerQus> list = questionService.buyerList((String)session.getAttribute("sId"));
		
		req.getSession().setAttribute("questionList", list);
		
		redirect.addAttribute("contentPage", "myPage/buyerPage/questionList.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/adminQuestionList")
	public String adminQuestionList (HttpServletRequest req, RedirectAttributes redirect) {
		
		HttpSession session = req.getSession();
		
		switch((String)session.getAttribute("listType")) {
		case "1" :
			List<DTOPerQus> noReplyList = questionService.noReplyList();
			req.getSession().setAttribute("questionList", noReplyList);
			break;
		case "2" :
			List<DTOPerQus> replyedList = questionService.replyedList();
			req.getSession().setAttribute("questionList", replyedList);
			break;
		case "3" :
			List<DTOPerQus> allList = questionService.allList();
			req.getSession().setAttribute("questionList", allList);
			break;		
		}
		
		redirect.addAttribute("contentPage", "myPage/adminPage/questionList.jsp");
		
		return "redirect:mainForm";
	}
	
	@RequestMapping("/adminQuestionWrite")
	public String adminQuestionWrite (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/questionPage/adminQuestionWrite.jsp");
		return "redirect:mainForm";
	}
	
	@RequestMapping("/buyerQuestionWrite")
	public String buyerQuestionWrite (RedirectAttributes redirect) {
		redirect.addAttribute("contentPage", "myPage/questionPage/buyerQuestionWrite.jsp");
		return "redirect:mainForm";
	}
}

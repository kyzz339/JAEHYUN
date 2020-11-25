package com.desert.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.QuestionService.QuestionServiceImpl;
import com.desert.demo.dto.DTOPerQus;
import com.desert.demo.mapper.QuestionMapper;

@Controller
public class QuestionActionController {

	@Autowired
	QuestionMapper mapper;
	
	@Autowired
	DTOPerQus dtoPerQus;
	
	@Autowired
	QuestionServiceImpl questionService;
	
	@RequestMapping("/buyerQuestionWriteAction")
	public String buyerQuestionWriteAction(HttpServletRequest req, Model model, DTOPerQus dtoPerQus) {
		
		HttpSession session = req.getSession();
		
		String questionTitle = (String)req.getParameter("questionTitle");
		String questionContents = (String)req.getParameter("questionContents");	
		String buyerId = (String)session.getAttribute("sId");
		
		int nResult = questionService.write(buyerId, questionTitle, questionContents);
		
		if(nResult <= 0) {
			System.out.println("글 쓰기 실패 ㅠ-ㅠ ");
			model.addAttribute("msg", "글이 등록되었습니다.");
	   		model.addAttribute("url","/buyerQuestionList");
		}else {
		System.out.println("오예!");
		model.addAttribute("msg", "글이 등록되었습니다.");
   		model.addAttribute("url","/buyerQuestionList");
		}
		
		return "redirect";
	}
	
	@RequestMapping("/questionDetailViewAction")
	public String questionDetailViewAction(HttpServletRequest req, Model model, DTOPerQus dtoPerQus) {
		

		return "redirect";
	}
	
	
	@RequestMapping("/updateQuestionAction")
	public String updateQuestion(HttpServletRequest req, Model model, DTOPerQus dtoPerQus) {
		
		HttpSession session = req.getSession();
		
		int idx = Integer.parseInt(req.getParameter("idx"));
		String questionTitle = (String)req.getParameter("questionTitle");
		String questionContents = (String)req.getParameter("questionContents");
		
		int nResult = questionService.modify(idx, questionTitle, questionContents);
        if( nResult <= 0 ) {
			System.out.println("글수정 실패");
			model.addAttribute("msg","글수정 실패");
			model.addAttribute("url","/buyerQuestionList");
		}else {
			System.out.println("글수정 성공");
			model.addAttribute("msg","글수정 성공");
			model.addAttribute("url","/buyerQuestionList");
		}
		
		
		return "redirect";
	}
	
	@RequestMapping("/deleteQuestionAction")
	public String deleteQuestion(HttpServletRequest req, Model model, DTOPerQus dtoPerQus) {
		
		int idx = Integer.parseInt(req.getParameter("idx"));
		
		mapper.deleteQuestion(idx);
		
		model.addAttribute("msg","질문이 삭제 되었습니다.");
		model.addAttribute("url","/adminQuestionList?listType=1");
		
		return "redirect";
	}
	
	@RequestMapping("/selectQuestion")
	public String selectQeustion(HttpServletRequest req, RedirectAttributes redirect) {
		
		int idx = Integer.parseInt(req.getParameter("idx"));
		DTOPerQus dto = mapper.selectQuestion(idx);
		
		req.getSession().setAttribute("selectQuestion", dto);
		
		redirect.addAttribute("contentPage", "myPage/buyerPage/questionWrite.jsp");
		
		return "redirect:mainForm";
	}
	
	
	
	
	@RequestMapping("/adminReplyInsertAction")
	public String adminQuestionWriteAction (HttpServletRequest req, Model model, DTOPerQus dtoPerQus) {
		
		HttpSession session = req.getSession();		

		int idx = Integer.parseInt(session.getAttribute("idx").toString());
		String answerContents = req.getParameter("answerContents");
		
		questionService.writeReply(idx, answerContents);

		model.addAttribute("msg", "답변이 등록되었습니다.");
   		model.addAttribute("url","/adminQuestionList?listType=1");
		
   		
   		
		return "redirect";
	}
	
	@RequestMapping("/adminReplyDeleteAction")
	public String adminReplyDeleteAction (HttpServletRequest req, Model model, DTOPerQus dtoPerQus) {
	
		HttpSession session = req.getSession();		
		
		int idx = Integer.parseInt(req.getParameter("idx"));

		questionService.deleteReply(idx);
		
		model.addAttribute("msg", "답변이 삭제되었습니다.");
   		model.addAttribute("url","/adminQuestionList?listType=1");
   		
		return "redirect";
		
	}
	
	
}

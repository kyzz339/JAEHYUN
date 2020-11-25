package com.desert.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.dto.DTOGoods;
import com.desert.demo.loginService.InsertBuyerMember;
import com.desert.demo.service.ServiceGoods;

@Controller
public class LoginController {

	@Autowired
	InsertBuyerMember ibmember;
	
	@Autowired
	DTOGoods goods;
	@Autowired
	ServiceGoods serviceGoods;
	
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

//		======================
	 // 로그인 컨트롤러 
//	 	======================

	    @RequestMapping("/joinForm1")
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
	    	return "mainForm";
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
	    
//		======================
	 // 마이페이지 정보수정 매핑 
//	 	======================
	    
	    @RequestMapping("/myPageModify")
	    public String buyerMyPageModify(RedirectAttributes redirect) {
	        redirect.addAttribute("contentPage", "myPage/buyerPage/myPageModify.jsp");
	        return "redirect:mainForm";
	    }
	    
	    @GetMapping("/goodsRegForm")
		public String OpengoodsRegForm(RedirectAttributes redirect) {
			redirect.addAttribute("contentPage", "myPage/adminPage/goodsRegForm.jsp");
			return "redirect:mainForm";
	}

	@GetMapping("/goodsRegList")
	public String OpenGoodsList(RedirectAttributes redirect,HttpServletRequest req){
		ArrayList<DTOGoods> list=serviceGoods.goodsList();
		System.out.println("arraylist"+list);
		req.getSession().setAttribute("list",list);

		redirect.addAttribute("contentPage","myPage/adminPage/goodsRegList.jsp");
			return "redirect:mainForm";
	    }

	    @GetMapping("/productDetail")
	public String productDetail(HttpServletRequest req,RedirectAttributes redirect){
	    	int idx=Integer.parseInt(req.getParameter("idx"));
	    	goods=serviceGoods.getInfoGoods(idx);
	    	req.getSession().setAttribute("goods",goods);
	    	redirect.addAttribute("contentPage","main/productDetail.jsp");
	    	return "redirect:mainForm";
		}

		@GetMapping("modifyGoods")
	public String openModify(HttpServletRequest req,RedirectAttributes redirect){
	    	int idx=Integer.parseInt(req.getParameter("idx"));
	    	goods=serviceGoods.getInfoGoods(idx);
	    	req.getSession().setAttribute("goods",goods);
			redirect.addAttribute("contentPage","myPage/adminPage/goodsModifyForm.jsp");
			return "redirect:mainForm";
		}

		@GetMapping("/productList")
	public String productList(HttpServletRequest req,RedirectAttributes redirect){
			ArrayList<DTOGoods> list=serviceGoods.goodsList();
			req.getSession().setAttribute("list",list);
			redirect.addAttribute("contentPage","main/productList.jsp");
			return "redirect:mainForm";
		}
	    
}

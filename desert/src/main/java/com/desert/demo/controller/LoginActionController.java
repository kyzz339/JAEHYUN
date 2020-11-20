package com.desert.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.dto.DTOMember;
import com.desert.demo.loginService.FindIdImpl;
import com.desert.demo.loginService.LoginImpl;
import com.desert.demo.mapper.MemberMapper;

@Controller
public class LoginActionController {
//	======================
// 최현석컨트롤러 : 서비스, 비즈니스 로직 매핑
//	======================

 	@Autowired
 	LoginImpl login;
	
	@Autowired
	MemberMapper mapper;
	
	@Autowired
	DTOMember dtoMember;
 	
//	   로그인 액션
	    @RequestMapping("/loginAction")
	    public String loginAction(HttpServletRequest req,Model model) {
	    	String id=req.getParameter("id");
	    	int nResult = login.login(req);

	    	if(nResult<=0) {
	    		System.out.println("로그인 실패");
	    		model.addAttribute("msg","로그인 실패 - 아이디나 암호를 확인해주세요");
	    		model.addAttribute("url","/login");
	    	}else {
	    		System.out.println("로그인 성공");
	    		
	    		HttpSession session = req.getSession();
	    		
//	    		세션에 해당 멤버 정보 저장.
	    		session.setAttribute("sName", mapper.getMemberInfo(id).getName());
	    		session.setAttribute("sPw", mapper.getMemberInfo(id).getPw());
	    		session.setAttribute("sId", mapper.getMemberInfo(id).getId());
	    		session.setAttribute("sEmail", mapper.getMemberInfo(id).getEmail());
	    		session.setAttribute("sPhone", mapper.getMemberInfo(id).getPhone());
	    		session.setAttribute("sAddress", mapper.getMemberInfo(id).getAddress());
	    		session.setAttribute("sRegdate", mapper.getMemberInfo(id).getRegdate());
	    		session.setAttribute("sBuyGoodsIdx", mapper.getMemberInfo(id).getBuyGoodsIdx());
	    		session.setAttribute("sVerifiCode", mapper.getMemberInfo(id).getVerifiCode());
	    		session.setAttribute("sDoPromotion", mapper.getMemberInfo(id).getDoPromotion());
	    		
		   		model.addAttribute("msg",session.getAttribute("sId")+"님 로그인 되셨습니다.");
		   		model.addAttribute("url","/");
		   		
//	    	 나중에 하고싶음
//	    		GetMemberInfo memberInfo = new GetMemberInfoImpl();
//	    		memberInfo.getMemberInfo(id);
//	    		dtoMember=getMemberInfo.getMemberInfo(req.getParameter("id"));
//    			String id=req.getSession().getAttribute("sessionID").toString();
		   		
	    	}
	    	
	    	return "redirect";
	    }
//	    
////	   세션에 멤버 정보 저장
//	    @RequestMapping("/getMemberInfoAction")
//	    public String getMemberInfoAction(HttpServletRequest req, RedirectAttributes redirect) {
//	    	String id = req.getSession().getAttribute("sessionID").toString();
//	    	
//	    	DTOMember dtoMember = memberMapper.getMemberInfo(id);
//	    	
//	    	req.getSession().setAttribute("memberInfo", dtoMember);
//	    
//	    	return "redirect:mainForm";
//	    }
//	    
//	   로그아웃 액션
	    @RequestMapping("/logoutAction")
	    public String logout(HttpServletRequest req, RedirectAttributes redirect) {

				System.out.println("로그아웃 성공");
				
				// 로그아웃시 세션정보를 모두 삭제한다.
				req.getSession().invalidate();
				
				redirect.addAttribute("msg","로그아웃 되셨습니다.");
				redirect.addAttribute("url","/");
			
			return "redirect:mainForm";
	    }

//	    아이디 찾기
	    @RequestMapping("/findIDAction")
	    public String findIDAction(HttpServletRequest req, Model model) throws Exception {
	    	
	    	FindIdImpl findId = new FindIdImpl();

			String name = req.getParameter("name");
			String email = req.getParameter("email");
	    	
			System.out.println("name"+name);
			System.out.println("mail"+email);
			
	    	int nResult = mapper.findID(name, email);

	    	if(nResult<=0) {
	    		System.out.println("해당하는 아이디가 없습니다.");
	    		model.addAttribute("msg","해당하는 아이디가 없습니다. 다시 입력해주세요.");
	    		model.addAttribute("url","/findID");
	    	}else {
	    		System.out.println("아이디 찾기 성공");

	    		HttpSession session = req.getSession();
	    		
//	    		세션에 해당 멤버 정보 저장.
	    		session.setAttribute("sFindId", mapper.getID(name, email).getId());
	    		model.addAttribute("msg","아이디 찾기 성공 !");
	    		model.addAttribute("url","/findIDResult");
	    	
	    }
	    	return "redirect";
}
}

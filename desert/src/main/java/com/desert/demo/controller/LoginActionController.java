package com.desert.demo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.desert.demo.dto.DTOGoods;
import com.desert.demo.dto.DTOMember;
import com.desert.demo.loginService.FindIdImpl;
import com.desert.demo.loginService.FindPW;
import com.desert.demo.loginService.GetMemberInfo;
import com.desert.demo.loginService.LoginImpl;
import com.desert.demo.mapper.MemberMapper;
import com.desert.demo.service.ServiceGoods;

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
	
	@Autowired
	GetMemberInfo memberInfo;

	@Autowired
	FindPW findPw;

	@Autowired
	DTOGoods goods;

	@Autowired
	ServiceGoods serviceGoods;
 	
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
	    public String findIDAction(HttpServletRequest req, Model model, DTOMember dtoMember) throws Exception {
	    	
//	    	Spring에서는 파라미터에 DTO 객체를 넣어주면 뷰에서 넘어온 name 값과 일치하는 곳에
//	    	자동으로 변수를 주입해준다.
//	    	DTOMember.getName() ==뷰에 입력한 name
	    	System.out.println(dtoMember.getEmail());
	    		    	
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
	    
	    @PostMapping("/findpw")
		public String findpw(HttpServletRequest req,RedirectAttributes redirect){
			dtoMember=findPw.findPw(req);
			if(dtoMember==null){
				redirect.addAttribute("msg","해당 아이디와 일치하는 값이 없습니다");
				redirect.addAttribute("url","/");

				return "redirect";
			}else{
				HttpSession session= req.getSession();
				session.setAttribute("session",dtoMember);
				redirect.addAttribute("contentPage", "login/findPWResult.jsp");

				return "redirect:mainForm";}
		}
		@PostMapping("/newpw")
		public String newpw(HttpServletRequest req,RedirectAttributes redirect,Model model){
			HttpSession session=req.getSession();
			dtoMember= (DTOMember) session.getAttribute("session");

			String id=dtoMember.getId();
			String pw=req.getParameter("pw");
			int result=findPw.pwReset(id,pw);

			if(result==1) {
				model.addAttribute("msg", "수정되었습니다!");
				model.addAttribute("url", "/");
			}else{
				model.addAttribute("msg", "수정에 실패했습니다");
				model.addAttribute("url", "/");
			}
			return "redirect";
		}
		@PostMapping("/goodsRegForm")
		public String goodsReg(Model model, MultipartFile file,HttpServletRequest req) throws IOException {
			int result = serviceGoods.insertGoods(req, file);
			if (result == 1) {
				model.addAttribute("msg", "상품이 등록되었습니다.");
				model.addAttribute("url", "goodsRegList");
			} else {
				model.addAttribute("msg", "상품이 실패되었습니다.");
				model.addAttribute("url", "goodsRegList");
			}
			return "redirect";
		}
		@RequestMapping("/delete")
		public String delete(HttpServletRequest req, Model model){
			int idx=Integer.parseInt(req.getParameter("idx"));
			int result = serviceGoods.deleteGoods(idx);

			if(result==1){
				model.addAttribute("msg","상품이 삭제되었습니다");
				model.addAttribute("url","/goodsRegList");
			}else {
				model.addAttribute("msg","상품 삭제에 실패하였습니다");
				model.addAttribute("url","/goodsRegList");
			}
			return "redirect";
		}
		@PostMapping("/GoodsModify")
		public String goodsModify(Model model, MultipartFile file,HttpServletRequest req) throws IOException {
				int result = serviceGoods.updateGoods(req,file);

			if (result == 1) {
				model.addAttribute("msg", "상품이 수정되었습니다.");
				model.addAttribute("url", "goodsRegList");
			} else {
				model.addAttribute("msg", "상품 수정이 실패하였습니다.");
				model.addAttribute("url", "goodsRegList");
			}
			return "redirect";
		}
		@PostMapping("/search")
		public String searchGoods(HttpServletRequest req,RedirectAttributes redirect){
			String search=req.getParameter("search");
			System.out.println();
			ArrayList<DTOGoods>list=serviceGoods.goodsSearch("search");
			req.getSession().setAttribute("list",list);
			redirect.addAttribute("contentPage", "main/search.jsp");
			for(DTOGoods goods:list ){
				System.out.println(goods.getIdx());
			}

			return "redirect:mainForm";

		} 
	    
}

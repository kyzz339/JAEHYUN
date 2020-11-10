package com.desert.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

public class Controller2 {
	
	@RequestMapping("/")
	public String test() throws Exception{
		return "/myPage/adminPage/adminBuyerManage";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test1() {
		//비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		//서비스는 매퍼랑 직접 붙는다 
		//
		return "/myPage/adminPage/adminBuyerManage";
	}
	
//	=============================
//  헤더, 푸터 , 사이드바 매핑
//	=============================
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footerMapping() {
		//비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		//서비스는 매퍼랑 직접 붙는다 
		//
		return "/cmPage/footer";
	}
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String headerMapping() {
		//비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		//서비스는 매퍼랑 직접 붙는다 
		//
		return "/cmPage/header";
	}

	
	@RequestMapping(value = "/sidebar", method = RequestMethod.GET)
	public String sidebarMapping() {
		//비즈니스 로직은 서비스 단에서 처리하는 것이 효율적이다.
		//서비스는 매퍼랑 직접 붙는다 
		//
		return "/cmPage/sidebar";
	}

//	=============================
//	사이드 바 매핑
//	Admin 관리자 사이드 바 매핑
//	=============================
	@RequestMapping(value = "/adminBuyerManage", method = RequestMethod.GET)
	public String adminBuyerManageMapping() {
		return "/myPage/adminPage/adminBuyerManage";
	}
	@RequestMapping(value = "/adminEventManage", method = RequestMethod.GET)
	public String adminEventManageMapping() {
		return "/myPage/adminPage/adminEventManage";
	}
	@RequestMapping(value = "/adminNoticeManage", method = RequestMethod.GET)
	public String adminNoticeManageMapping() {
		return "/myPage/adminPage/adminNoticeManage";
	}
	@RequestMapping(value = "/adminQNAManage", method = RequestMethod.GET)
	public String adminQNAManageMapping() {
		return "/myPage/adminPage/adminQNAManage";
	}
	@RequestMapping(value = "/adminSellerManage", method = RequestMethod.GET)
	public String adminSellerManageMapping() {
		return "/myPage/adminPage/adminSellerManage";
	}
//	=============================
//	Seller 판매자 사이드 바 매핑
//	=============================
	@RequestMapping(value = "/sellerMyPageModify", method = RequestMethod.GET)
	public String sellerMyPageModifyMapping() {
		return "/myPage/sellerPage/seller/sellerMyPageModify";
	}

	@RequestMapping(value = "/sellerMyReviewList", method = RequestMethod.GET)
	public String sellerMyReviewListMapping() {
		return "/myPage/sellerPage/seller/sellerMyReviewList";
	}

	
	@RequestMapping(value = "/sellerMyQuestionList", method = RequestMethod.GET)
	public String sellerMyQuestionListMapping() {
		return "/myPage/sellerPage/seller/sellerMyQuestionList";
	}

	
	@RequestMapping(value = "/sellerQuestionDetail", method = RequestMethod.GET)
	public String sellerQuestionDetailMapping() {
		return "/myPage/sellerPage/seller/sellerQuestionDetail";
	}

	@RequestMapping(value = "/sellerQuestionWriter", method = RequestMethod.GET)
	public String sellerQuestionWriterMapping() {
		return "/myPage/sellerPage/seller/sellerQuestionWriter";
	}
//	=============================
// Buyer 구매자 사이드 바 매핑
//	=============================
	@RequestMapping(value = "/buyerCart", method = RequestMethod.GET)
	public String buyerCartMapping() {
		return "/myPage/buyerCart";
	}

	@RequestMapping(value = "/buyerCouponDetail", method = RequestMethod.GET)
	public String buyerCouponDetailtMapping() {
		return "/myPage/bbuyerCouponDetail";
	}
	
	@RequestMapping(value = "/buyerMypageModify", method = RequestMethod.GET)
	public String buyerMypageModifyMapping() {
		return "/myPage/buyerMypageModify";
	}
	
	@RequestMapping(value = "/buyerMyQuestionList", method = RequestMethod.GET)
	public String buyerMyQuestionListMapping() {
		return "/myPage/buyerMyQuestionList";
	}
	
	@RequestMapping(value = "/buyerMyReviewList", method = RequestMethod.GET)
	public String buyerMyReviewListMapping() {
		return "/myPage/buyerMyReviewList";
	}
	
	@RequestMapping(value = "/buyerOrderComplete", method = RequestMethod.GET)
	public String buyerOrderCompleteMapping() {
		return "/myPage/buyerOrderComplete";
	}
	
	@RequestMapping(value = "/buyerOrderDetail", method = RequestMethod.GET)
	public String buyerOrderDetailtMapping() {
		return "/myPage/buyerOrderDetail";
	}
	
	@RequestMapping(value = "/buyerOrderForm", method = RequestMethod.GET)
	public String buyerOrderFormMapping() {
		return "/myPage/buyerOrderForm";
	}
	
	@RequestMapping(value = "/buyerOrderList", method = RequestMethod.GET)
	public String buyerOrderListMapping() {
		return "/myPage/buyerOrderList";
	}
	
	@RequestMapping(value = "/buyerOrderListStatus", method = RequestMethod.GET)
	public String buyerOrderListStatusMapping() {
		return "/myPage/buyerOrderListStatus";
	}
	
	@RequestMapping(value = "/buyerPointList", method = RequestMethod.GET)
	public String buyerPointListMapping() {
		return "/myPage/buyerPointList";
	}
	
	@RequestMapping(value = "/buyerQuestionDetail", method = RequestMethod.GET)
	public String buyerQuestionDetailMapping() {
		return "/myPage/buyerQuestionDetail";
	}
	
	@RequestMapping(value = "/buyerQuestionWriter", method = RequestMethod.GET)
	public String buyerQuestionWriterMapping() {
		return "/myPage/buyerQuestionWriter";
	}
	
	@RequestMapping(value = "/buyerReviewList", method = RequestMethod.GET)
	public String buyerReviewListMapping() {
		return "/myPage/buyerReviewList";
	}
	
//	=============================
}

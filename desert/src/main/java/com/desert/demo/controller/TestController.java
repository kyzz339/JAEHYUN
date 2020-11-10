package com.desert.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

	@RequestMapping("/")
	public String test() throws Exception{
		return "/main/cmMain";
	}
	
	@RequestMapping("/0")
	public String T0() throws Exception{
		return "/";
	}
	
	@RequestMapping("/1")
	public String T1() throws Exception{
		return "/customerCenter/cmEventDetails";
	}
	
	@RequestMapping("/2")
	public String T2() throws Exception{
		return "/customerCenter/cmEventList";
	}
	
	@RequestMapping("/3")
	public String T3() throws Exception{
		return "/customerCenter/cmFAQList";
	}
	
	@RequestMapping("/4")
	public String T4() throws Exception{
		return "/customerCenter/cmIntroCompany";
	}
	
	@RequestMapping("/5")
	public String T5() throws Exception{
		return "/customerCenter/cmNoticeDetails";
	}
	
	@RequestMapping("/6")
	public String T6() throws Exception{
		return "/customerCenter/cmNoticeList";
	}
	
	@RequestMapping("/7")
	public String T7() throws Exception{
		return "/login/buyerJoinForm";
	}
	
	@RequestMapping("/8")
	public String T8() throws Exception{
		return "/login/cmJoinForm";
	}
	
	@RequestMapping("/9")
	public String T9() throws Exception{
		return "/login/cmLogin";
	}
	
	@RequestMapping("/10")
	public String T10() throws Exception{
		return "/login/cmPasswordCheck";
	}
	
	@RequestMapping("/11")
	public String T11() throws Exception{
		return "/login/sellerJoinForm";
	}
	
	@RequestMapping("/12")
	public String T12() throws Exception{
		return "/main/cmMain";
	}
	
	@RequestMapping("/13")
	public String T13() throws Exception{
		return "/main/cmProductDetail"; //문제있음
	}
	
	@RequestMapping("/14")
	public String T14() throws Exception{
		return "/main/cmProductList"; //
	}
	
	@RequestMapping("/15")
	public String T15() throws Exception{
		return "/main/cmSearch";
	}
	
	@RequestMapping("/16")
	public String T16() throws Exception{
		return "/myPage/buyerCart"; // 문제있음
	}
	
	@RequestMapping("/17")
	public String T17() throws Exception{
		return "/myPage/buyerCouponDetail";
	}
	
	@RequestMapping("/18")
	public String T18() throws Exception{
		return "/myPage/buyerMyPageModify";
	}
	
	@RequestMapping("/19")
	public String T19() throws Exception{
		return "/myPage/buyerMyQuestionList";
	}
	
	@RequestMapping("/20")
	public String T20() throws Exception{
		return "/myPage/buyerMyReviewList";
	}
	
	@RequestMapping("/21")
	public String T21() throws Exception{
		return "/myPage/buyerOrderComplete";
	}
	
	@RequestMapping("/22")
	public String T22() throws Exception{
		return "/myPage/buyerOrderDetail";
	}
	
	@RequestMapping("/23")
	public String T23() throws Exception{
		return "/myPage/buyerOrderForm";
	}
	
	@RequestMapping("/24")
	public String T24() throws Exception{
		return "/myPage/buyerOrderList";
	}
	
	@RequestMapping("/25")
	public String T25() throws Exception{
		return "/myPage/buyerOrderListStatus";
	}
	
	@RequestMapping("/26")
	public String T26() throws Exception{
		return "/myPage/buyerPointList";
	}
	
	@RequestMapping("/27")
	public String T27() throws Exception{
		return "/myPage/buyerQuestionDetail";
	}
	
	@RequestMapping("/28")
	public String T28() throws Exception{
		return "/myPage/buyerQuestionWriter";
	}
	
	@RequestMapping("/29")
	public String T29() throws Exception{
		return "/myPage/buyerReviewList";
	}
	
	@RequestMapping("/30")
	public String T30() throws Exception{
		return "/myPage/adminPage/adminBuyerManage";
	}
	
	@RequestMapping("/31")
	public String T31() throws Exception{
		return "/myPage/adminPage/adminEventManage";
	}
	
	@RequestMapping("/32")
	public String T32() throws Exception{
		return "/myPage/adminPage/adminNoticeManage";
	}
	
	@RequestMapping("/33")
	public String T33() throws Exception{
		return "/myPage/adminPage/adminQNAManage";
	}
	
	@RequestMapping("/34")
	public String T34() throws Exception{
		return "/myPage/adminPage/adminSellerManage";
	}

	@RequestMapping("/35")
	public String T35() throws Exception{
		return "/myPage/sellerPage/sellerGoodsDelivery";
	}
	
	@RequestMapping("/36")
	public String T36() throws Exception{
		return "/myPage/sellerPage/sellerGoodsRegForm";
	}
	
	@RequestMapping("/37")
	public String T37() throws Exception{
		return "/myPage/sellerPage/sellerGoodsRegList";
	}
	
	@RequestMapping("/38")
	public String T38() throws Exception{
		return "/myPage/sellerPage/sellerMyPageModify";
	}
	
	@RequestMapping("/39")
	public String T39() throws Exception{
		return "/myPage/sellerPage/sellerMyReviewList";
	}
	
	@RequestMapping("/40")
	public String T40() throws Exception{
		return "/myPage/sellerPage/sellerQuestionDetail";
	}
	
	@RequestMapping("/41")
	public String T41() throws Exception{
		return "/myPage/sellerPage/sellerQuestionList";
	}
	
	@RequestMapping("/42")
	public String T42() throws Exception{
		return "/myPage/sellerPage/sellerQuestionWriter";
	}

	@RequestMapping("/43")
	public String T43() throws Exception{
		return "/login/cmFindID";
	}
	
	@RequestMapping("/44")
	public String T44() throws Exception{
		return "/login/cmFindIDResult";
	}
	
	@RequestMapping("/45")
	public String T45() throws Exception{
		return "/login/cmFindPW";
	}
	
	@RequestMapping("/46")
	public String T46() throws Exception{
		return "/login/cmFindPWResult";
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
	
}

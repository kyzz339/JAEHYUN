<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String contentPage = (String)request.getParameter("contentPage");
// 	if (contentPage == null)
// 	contentPage = "home.jsp";
%>
<!DOCTYPE html>
<html>
<head>

<title>프리미엄 디저트 마켓 : 데저트</title>


</head>

<body>
	<!-- 상단 -->
	<jsp:include page="/header"></jsp:include>

	<!-- myPage가 포함된 페이지를 가져올때 사이드바를 보여주는 제어문 -->
	<c:if test=" ${myPage ne null} ">
		<%@include file=""%>
	</c:if>
	<!-- main페이지에서 redirect로 갈아끼울 페이지 -->
	<jsp:include page=" <%= contentPage %>" />

	<!--  하단 -->
	<jsp:include page="/footer"></jsp:include>
</body>
</html>
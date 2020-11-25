<%@ page import="java.util.ArrayList" %>
<%@ page import="com.desert.demo.dto.DTOMember" %>
<%@ page import="com.desert.demo.dto.DTOGoods" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%
	ArrayList<DTOGoods>list= (ArrayList<DTOGoods>) session.getAttribute("list");
%>

<style type="text/css">
h3 {
    text-align: center;
}
.table_1 {
	width: 700px;
	margin: auto;
	/* margin-left: 15%; */
}
.div_input{
    margin-left: 1100px;
    /* border: 1px solid black; */
}
.table_2 {
	height: 200px;
	padding: 20px;
}

.table_3 {
	padding: 20px;
	width: 100%;
}
</style>
</head>
<body>

	<h3>등록된 상품</h3>
	<div class="div_input">
		<input type="text" >
		<button type="button">검색</button>
	</div>
	<hr>
	<!-- for문돌려서 DB에 저장된정보들 list로 가져옴 -->
	<c:forEach var="list" items="${list}">
	<table class="table_1">
		<br>
		<tr>
			<td rowspan="5"><a href="productDetail?idx=${list.idx}"> <img src="${list.imgS}" width="280"
					height="200" />
			</a></td></tr>
		<table class="table_2">
					<tr>
						<td>판매상품 : ${list.name}</td>
					</tr>
					<tr>
						<td>판매가격 :  ${list.price} 원</td>
					</tr>
					<tr>
						<td>등록날짜 :  ${list.regdate}</td>
					</tr>
<%--					<tr>--%>
<%--						<td>매출액 (99999원)</td>--%>
<%--						<td>--%>ㅡ
<%--							<table class="table_3">--%>
<%--								<tr>--%>
									<td>
										<a href="modifyGoods?idx=${list.idx}"><button type="button" class="btn btn-outline-secondary" >수정</button></a>
										<a href="delete?idx=${list.idx}"><button type="button" class="btn btn-outline-secondary" >삭제</button></a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<hr>
	<!-- 여기까지 반복 -->
	</c:forEach>
</body>
</html>
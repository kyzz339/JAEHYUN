<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ page import="com.desert.demo.dto.DTOPerQus" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<style>
#box{
      padding: 20px;
      border-top: 1px solid black;
      width: 100%;
      height : 100%;
      text-align: center;
      margin : 50px;
   }
aside {
   float: left;
}
.centered{ display: table; margin: 0 auto; }
#point{
    background-color:#F88687;
    color:black; 
     }
.colum{
	margin : 50px;
   height: auto;
}
#bottom{
padding-bottom:10px;
   }
</style>
 <%
	List<DTOPerQus> questionList = (List<DTOPerQus>)session.getAttribute("questionList");
/* 	System.out.println( "list count:" + list.size() ); */
	String list_page = (String)session.getAttribute("page");
/* 	System.out.println( "list_page:" + list_page ); */
/* 	String page1_active = "";
	String page2_active = "";
	String page3_active = "";
	if(list_page.equals("1")) 
		page1_active = "active";
	if(list_page.equals("2")) 
		page2_active = "active";
	if(list_page.equals("3")) 
		page3_active = "active";
 */%>
</head>
<body>
<div>
	<br />
       <h2 style="text-align:center">1:1 문의</h2><br>
<div  style="width=500%; padding = 20px">
<table>
<!-- ================================ -->
<tr class="list-group-item" id="point">
<th width="100px">질문자</th>
<th width="400px">제목</th>
<th width="200px">답변여부</th>
<th width="200px">작성일</th>
<th width="200px">관리</th>
</tr>
<!-- ================================ -->
<c:forEach var="dto" items="${questionList}">
<div >
<tr class="list-group-item" style="margin : 0 auto;">
<th width="100px">${ dto.memberId }</th>
<th width="400px">${ dto.questionTitle }</th>
<th width="200px">${ dto.reply }</th>
<th width="200px">${ dto.questionDate }</th>
<th width="200px">
	   <button type="button"  class="btn btn-default" style="background-color: #F88687"><a href="/deleteQuestionAction?idx=${dto.idx}">질문삭제</a></button>
</th>
</tr>

<div>
<tr>
<th  width="1400px" style="background-color : #F2F2F2; padding : 10px; text-align: center;">
	<h5>질문내용</h5>
	<p>${ dto.questionContents }p>
</th>
</div>
<div>
<div>

</div><tr>
<th width="1400px" style="background-color : #F2F2F2; padding : 10px; text-align: center;">
	<h5>답변내용</h5>
	<c:set var="replyCheck" value="${dto.reply}" />
	<c:if test="${replyCheck eq 'N'}">
		<p>답변 대기 중 입니다.</p>
	</c:if>
	<c:if test="${replyCheck eq 'Y'}">
		<p>${ dto.answerContents }</p>
	</c:if>
</th>
</tr>
</c:forEach>
</table>
</div>
 	   <tr style="background-color: white; color:black;">
	        <td colspan="5">
	        	<button type="button" class="btn btn-link"><a href="/buyerQuestionWrite"><b>새 질문등록</b></a></button>
	        </td>
	    </tr>
<%-- <nav aria-label="...">
	  	<ul class="pagination">
		    <li class="page-item disabled">
		      	<span class="page-link">Previous</span>
		    </li>
		    <li class="page-item <%= page1_active %>">
		    	<a class="page-link"  href="buyerQuestionList?page=1">1</a>
		    </li>
		    <li class="page-item <%= page2_active %>">
		      	<a class="page-link" href="buyerQuestionList?page=2">2</a>
		    </li>
		    <li class="page-item <%= page3_active %>">
		    	<a class="page-link" href="buyerQuestionList?page=3">3</a>
		    </li>
		    <li class="page-item">
		      	<a class="page-link">Next</a>
		    </li>
	  	</ul>
	</nav> --%>
</body>
</html>
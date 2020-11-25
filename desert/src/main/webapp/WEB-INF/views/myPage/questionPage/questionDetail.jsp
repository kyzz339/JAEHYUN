<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.desert.demo.dto.DTOPerQus" %>  
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <%
  	DTOPerQus questionDetail = (DTOPerQus)session.getAttribute("");
  %>
  
  </head>
<body>
		<br />
       <h2 style="text-align:center"> 1:1 문의 </h2><br>
		<br />
	<div>
	<h1>글 상세</h1>
	<hr>
	<form action="/updateQuestionAction" method="post">
	<input name="seq" type="hidden" value=""/>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">제목</td>
				<td  style="width : 400px;text-align: center;"> ${ content_view.questionTitle }  </td>
			</tr>
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">작성자</td>
				<td  style="width : 400px; text-align: center;"> ${content_view.id }</td>
			</tr>
				<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">작성일</td>
				<td  style="width : 400px; text-align: center;">${ content_view.regdate }</td>
			</tr>
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">내용</td>
				<td  style="text-align: left;"><textarea name="content" cols="100" rows="20">
					${ content_view.questionContents }
					</textarea></td>
			</tr>

		</table>
		</form>
		<br />
	        <tr style="background-color: white; color:black;">
	            <td colspan="2">
		            <input type="submit" class="btn btn-primary" value="수정">
		            &nbsp;&nbsp;
		            <button type="button" class="btn btn-link" style="background-color: #F88687"><a href="list"><b>목록 보기</b></a></button>
		            &nbsp;&nbsp;
		            <button type="button" class="btn btn-link" style="background-color: #F88687"><a href="delete?bid=${content_view.bid}"><b>글 삭제</b></a></button>
		            &nbsp;&nbsp;
		            <button type="button" class="btn btn-link" style="background-color: #F88687"><a href="reply_view?bid=${content_view.bid}"><b>댓글 달기</b></a></button> 
	            </td>
	        </tr>

 <!-- ================================================================================================ -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 <!-- ================================================================================================ -->
 
</body>

</html>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
    <title>프리미엄 디저트 마켓 : 데저트</title>
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/header.jsp"></jsp:include>
<!-- ================================================================================================ -->
</head>
<body>
<!-- ================================================================================================ -->
<!-- 사이드바 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/sidebar.jsp"></jsp:include>
<!-- ================================================================================================ -->
<!-- ================================================================================================ -->
    <!-- 페이지 본문 내용을 입력하세요 -->
<!-- ================================================================================================ -->
<!-- ================================================================================================ -->
  
		<br />
       <h2 style="text-align:center"> 개인 정보 수정 / 탈퇴 </h2><br>
		<br />
	<div>
	<h1>글 상세</h1>
	<hr>
	<form action="#" method="post">
	<input name="seq" type="hidden" value=""/>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">제목</td>
				<td  style="width : 400px;text-align: center;"> 안녕하세요  </td>
			</tr>
			 <tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">조회수</td>
				<td style="width : 400px; text-align: center; "> 9999999 </td>
			</tr>
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">작성자</td>
				<td  style="width : 400px; text-align: center;"> 최현석</td>
			</tr>
				<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">작성일</td>
				<td  style="width : 400px; text-align: center;">2020.11.30.</td>
			</tr>
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687">내용</td>
				<td  style="text-align: left;"><textarea name="content" cols="100" rows="20">
					배고 파요 배고 파 배고 파
					</textarea></td>
			</tr>

		</table>
		</form>
		<br>
	<div class="btn-group" role="group" aria-label="..." style="display: inline-block; margin: 0 auto; padding-bottom: 200px; background-color : ##F2F2F2">
	  <button type="button" class="btn btn-default" style="background-color: #F88687">글 수정</button>
	  <button type="button" class="btn btn-default" style="background-color: #F88687">글 삭제</button>
	</div>
	</div>
    <!-- 페이지 분문 내용 끝 -->
 <!-- ================================================================================================ -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 <!-- ================================================================================================ -->
 
<!-- 푸터 -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
</body>

</html>



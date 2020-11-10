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
     <!-- ========================================= -->
       <h2 style="text-align:center"> 글 등록 </h2><br>
		<br />
	<div>
	<h1>글 등록</h1>
	<hr>
	<form action="#" method="post">
	<input name="seq" type="hidden" value=""/>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td style="width : 100px; text-align: center; background-color: #F88687; border: 1px solid">제목</td>
			<td style="margin: 0 auto; text-align: center; border : 1px solid"><input type="text" id="#" name="#" required
		       minlength="1" maxlength="100" size="100" /></td>
			</tr>
			<tr>
		</table>
		</form>
		<br />
					<!--  써머노트 입력 입력  -->
					<!-- https://summernote.org/getting-started/#basic-api 써머노트 사용법 -->
  <div id="summernote"></div>
    <script>
      $('#summernote').summernote({
        placeholder: '내용을 입력하세요',
        tabsize: 2,
        height: 100
      });
    </script>
		<br>
	<div class="btn-group" role="group" aria-label="..." style="display: inline-block; margin: 0 auto; padding-bottom: 200px; background-color : ##F2F2F2">
	  <button type="button" class="btn btn-default" style="background-color: #F88687">글 등록</button>
	  <button type="button" class="btn btn-default" style="background-color: #F88687">글 삭제</button>
	</div>
	</div>
    <!-- 페이지 분문 내용 끝 -->
 <!-- ================================================================================================ -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 <!-- ================================================================================================ --><!-- 푸터 -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
</body>

</html>



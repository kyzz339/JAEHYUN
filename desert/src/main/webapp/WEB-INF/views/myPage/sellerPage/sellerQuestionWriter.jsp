<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
</head>
<body>
		<br />
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

 <!-- ================================================================================================ -->

</body>

</html>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
</head>
<body>
		<br />
       <h2 style="text-align:center"> 문의 글 등록 </h2><br>
		<br />
	<div>
	<hr>
	<form action="/buyerQuestionWriteAction" method="post">
        <table style="width: 70%; margin: 0 auto;">
            <tr>
			 <td style="width : 900px; height : 50px; text-align: center; background-color: #F98687; border: 1px solid"> 제목 </td>
                <td style="background-color: white; color:black;">
           	<input type="text" id="questionTitle" name="questionTitle" size="100" style="width: 800px; height : 50px; background-color: #f9f9f9; border : 1px solid;">
				</td>
            </tr>
            <tr>
                <td width : 100px height="500px" style="background-color: #F98687; color:black; border: 1px solid; text-align: center;"> 내용 </td>
                <td style="background-color: white; color:black;">
               <textarea id="questionContents" name="questionContents" rows="10" style="width: 800px; height : 500px; padding:10px; background-color: #f9f9f9; border : 1px solid" >
		        </textarea>
                </td>
            </tr>
            <tr style="background-color: white; color:black;">
                <td colspan="3"> 	             
	                	<div class="btn-group" role="group" aria-label="..." style="display: inline-block; margin: 0 auto; padding-bottom: 200px; background-color : ##F2F2F2">
						<button type="submit" class="btn btn-default" style="background-color: #F88687">글등록</button>
				         <button type="button" class="btn btn-default" style="background-color: #F88687"><a href="/buyerQuestionList">글목록</a></button>
						</div>
                </td>
            </tr>
        </table>
    </form>

	</div>
    <!-- 페이지 분문 내용 끝 -->
 <!-- ================================================================================================ -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 <!-- ================================================================================================ -->

</body>

</html>



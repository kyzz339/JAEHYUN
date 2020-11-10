<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="/header"></jsp:include>
<!-- ================================================================================================ -->
</head>
<body>
<!-- ================================================================================================ -->
<!-- 사이드바 -->
<!-- ================================================================================================ -->
<jsp:include page="/sidebar"></jsp:include>
<!-- ================================================================================================ -->
<!-- ================================================================================================ -->
    <!-- 페이지 본문 내용을 입력하세요 -->
<!-- ================================================================================================ -->
<!-- ================================================================================================ -->
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
<div>
		<br />
       <h2 style="text-align:center">(관리자)1:1 문의 관리/답변</h2><br>
<div id="box" class="centered">
<select>
<option>제목+내용</option>
<option>제목</option>
<option>내용</option>
</select>
<input type="text" name="search[contents]" style=" border=solid 1px;">
<button type="button" style="border=1px solid;">검색</button>  
</div>

<div  style="width=500%; padding = 20px">
<table>
<!-- ================================ -->
<tr class="list-group-item" id="point">
<th width="100px">번호</th>
<th width="200px">질문유형</th>
<th width="400px">제목</th>
<th width="200px">답변여부</th>
<th width="200px">작성일</th>
<th width="200px">관리</th>
</tr>
<!-- ================================ -->
<div >
<!-- 간략한 정보 출력 -->
<tr class="list-group-item" style="margin : 0 auto;">
<th width="100px">1</th>
<th width="200px">배송</th>
<th width="400px">배송이 일주일째 안와요</th>
<th width="200px">답변완료</th>
<th width="200px">2020.10.10</th>
<th width="200px">
	<div class="btn-group" role="group" aria-label="..." style="display: inline-block; margin: 0 auto; background-color : ##F2F2F2">
	  <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">답변등록</button>
	   <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">답변삭제</button>
	</div>
</th>
<!-- 질문 내용 출력 -->
<div>
<tr>
<th  width="1400px" style="background-color : #F2F2F2; padding : 10px; text-align: center;">
	<h5>질문내용</h5>
	<p>쿠키시켰는데 배송이 일주일 째 안와요. 문자로 안내 받긴 했는데 내일오는거 맞죠?</p>
</th>
</div>
<!-- 답변 내용 출력 -->
<div>
<tr>
<th  width="1400px" style="background-color : #F2F2F1; padding : 10px; text-align: center;">
	<h5>답변내용</h5>
	<p>코로나 방역작업 때문에 배송이 지연되고 있습니다. 내일 중으로 배송될 예정입니다.</p>
</th>
</div>
</tr>
<!-- ================================ -->


</table>
</div>
<!--  -->
<!-- ================================ -->

<div >
<tr class="list-group-item" style="margin : 0 auto;">

<div class="centered">
  <nav>
  <ul class="pager">
    <li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span>Next</a></li>
    <li class="next"><a href="#">Prev<span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</div> 
</nav>
       </div>
    </div>
<!-- 푸터 -->
<jsp:include page="/footer"></jsp:include>
</body>
</html>
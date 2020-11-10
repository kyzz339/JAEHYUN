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
       <h2 style="text-align:center">공지사항 관리</h2><br>
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
<th width="200px">중요도</th>
<th width="300px">제목</th>
<th width="400px">작성일</th>
<th width="500px">관리</th>
</tr>
<!-- ================================ -->
<div >
<!-- 간략한 정보 출력 -->
<tr class="list-group-item" style="margin : 0 auto;">
<th width="200px">중요</th>
<th width="300px">현석</th>
<th width="400px">2020.11.4</th>
<th width="500px">
	<div class="btn-group" role="group" aria-label="..." style="display: inline-block; margin: 0 auto; background-color : ##F2F2F2">
	  <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">중요지정</button>
	  <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">중요해제</button>
	  <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">등록</button>
	   <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">삭제</button>
	</div>
</th>
<!-- 회원 정보 출력 -->
<div>
<tr>
<th  width="1400px" style="background-color : #F2F2F2; padding : 10px; text-align: center;">
	<p>배송지연 안내! 코로나로 인해 상담원 연결이 어렵습니다. 배송 협력사에서 코로나로 인한 소독/방역으로 인해 배송일이 1-2 일 추가될 수 있습니다.</p>
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
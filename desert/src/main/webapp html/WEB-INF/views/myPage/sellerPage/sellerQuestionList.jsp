<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
<!--===============================================================================================-->
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
       <h2 style="text-align:center"> 나의 1:1 문의</h2><br>
<div id="box" class="centered">
<select>
<option>제목+내용</option>
<option>제목</option>
<option>내용</option>
</select>
<input type="text" name="search[contents]" style=" border=solid 1px;">
<button type="button" >검색</button>  
</div>

<div  style="width=500%; padding = 20px">
<table>
<tr class="list-group-item" id="point">
<th width="200px">번호</th>
<th width="500px">제목</th>
<th width="300px">작성일</th>
<th width="300px">관리</th>
</tr>
<tr class="list-group-item">
<th width="200px">1</th>
<th width="500px"><a href='#'>배송이 안옵니다 .... </a></th>
<th width="300px">2020-11-02</th>
<th width="300px">
	<div class="btn-group" role="group" aria-label="..." style="display: inline-block; margin: 0 auto; background-color : ##F2F2F2">
	  <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">수정</button>
	   <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">삭제</button>
	</div>
</tr>
</table>
</div>

<div class="centered">
  <nav>
  <ul class="pager">
    <li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
  	  <button type="button" href="#" class="btn btn-default" style="background-color: #F88687">새 문의 등록</button>
</div> 
</nav>
       </div>
    </div>
    <!-- 페이지 분문 내용 끝 -->

  </div>
  </div>
  </div>
  <!-- /#wrapper -->
 <!-- ================================================================================================ -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <!-- ================================================================================================ -->
 
<!-- 푸터 -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>프리미엄 디저트 마켓, 데저트</title>/title>
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="/header"></jsp:include>
<!-- ================================================================================================ -->
<style>
#box{
		padding: 5px;
		border-top: 1px solid black;
	}
aside {
	float: left;
}
.centered{ display: table; margin-left: auto; margin: 0 auto; }
.solid{
	border-style:solid;
}
#point{
	 background-color:#F88687;
	 color:black; 
	  }
.colum{
	height:30px;
}
#bottom{
padding-bottom:10px;
	}
</style>
</head>
<body>
<div>
<div class="solid">
<img class="aside" alt="icon" src="leaf.png" border="10px" align="left" height="75px"><p>무엇을 도와드릴 까요?</p><p>궁금한 사항이나 불편한 사항은 저희 고객센터로 전화 주시거나 1:1 문의로 남겨주세요.<br>
<p>친절히 안내해 드립니다.</p> 
</h3>
</div>
<main>
<aside>
<div class="list-group" id="bottom">
<h1 class="list-group-item" id="point">고객센터</h1>
<a href="#" class="list-group-item">공지사항</a>
<a href="#" class="list-group-item">자주하는 질문</a>
<a href="#" class="list-group-item">상품 문의</a>
<a href="#" class="list-group-item">1:1 문의하기</a>
<!-- <a href="#" class="list-group-item">아이디 찾기</a>
<a href="#" class="list-group-item">비밀번호 찾기</a> -->
</div>

<div>
<div class="list-group"></div>
<div id="point" align="center" class="colum"><h2>고객센터</h2></div>
<div class="list-group-item" align="center">010-111-1111</div>
<div class="list-group-item" align="center">평일10시~18시</div>
<div class="list-group-item" align="center">공휴일 주말 휴무</div>
</div>
</aside>

<div style="display: inline-block;margin : 0 auto ;padding : 100px;">
<h2>공지사항</h2><br>
<div id="box" class="centered">
<select>
<option>제목+내용</option>
<option>제목</option>
<option>내용</option>
</select>
<input type="text" name="search[contents]" value="내용">
<button type="button" >검색</button>  
</div>

<div  style="width=500%; padding = 20px; margin-left=300 px;">
<table>
<!-- ================================ -->
<tr class="list-group-item" id="point">
<th width="200px">중요도</th>
<th width="800px">제목</th>
<th width="300px">작성일</th>
</tr>
<!-- ================================ -->
<div >
<!-- 간략한 정보 출력 -->
<tr class="list-group-item" style="margin : 0 auto;">
<th width="200px">중요</th>
<th width="800px">COVID 19로 인한 배송지연 안내</th>
<th width="300px">2020.11.4</th>
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
 </div>
<!-- ================================================================================================ -->
<!-- 푸터 -->
<!-- ================================================================================================ -->
<jsp:include page="/footer"></jsp:include>
<!-- ================================================================================================ -->
<!--===============================================================================================-->
    </body>
</html>
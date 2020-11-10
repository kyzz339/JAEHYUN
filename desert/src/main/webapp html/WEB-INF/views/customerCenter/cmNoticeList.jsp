<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/header.jsp"></jsp:include>
<!-- ================================================================================================ -->
<style>
#box{
		padding: 5px;
		border-top: 1px solid black;
	}
aside {
	float: left;
}
.centered{ display: table; margin-left: auto; margin-right: auto; }
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

<table>
<tr class="list-group-item" id="point">
<th width="25%">번호</th><th width="80%">제목</th><th width="20%">작성일</th>
</tr>

<tr class="list-group-item">
<th>1</th><th><a href='#'>공지사항입니다</a></th><th>2020-11-02</th>
</tr>
</table>

<div class="centered">
<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>
</main>
</div>
<!-- ================================================================================================ -->
<!-- 푸터 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
<!-- ================================================================================================ -->
<!--===============================================================================================-->
    </body>
</html>
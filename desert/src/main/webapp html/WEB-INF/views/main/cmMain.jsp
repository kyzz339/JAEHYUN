<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

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
<!-- 메인 케러셀 : 촤현석-->
<!-- 일단은 로직 빼고 간략한 예시 4개만 띄워 놓겠습니다.-->

<br/>
<br/>
<main>
	<div class="container">
		<div class="carousel slide" id="main-carousel" data-ride="carousel" >
			<ol class="carousel-indicators">
				<li data-target="#main-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#main-carousel" data-slide-to="1"></li>
				<li data-target="#main-carousel" data-slide-to="2"></li>
				<li data-target="#main-carousel" data-slide-to="3"></li>
			</ol><!-- /.carousel-indicators -->
			
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block img-fluid" src="/img/mainBanner/1.png" alt="">
					<div class="carousel-caption d-none d-md-block">
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="/img/mainBanner/2.png" alt="">
					<div class="carousel-caption d-none d-md-block">
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="/img/mainBanner/3.png" alt="">
					<div class="carousel-caption d-none d-md-block">
					</div>
				</div>
				<div class="carousel-item">
					<img src="/img/mainBanner/4.png" alt="" class="d-block img-fluid">
					<div class="carousel-caption d-none d-md-block">
					</div>
				</div>
			</div><!-- /.carousel-inner -->
			
			<a href="#main-carousel" class="carousel-control-prev" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
				<span class="sr-only" aria-hidden="true">Prev</span>
			</a>
			<a href="#main-carousel" class="carousel-control-next" data-slide="next">
				<span class="carousel-control-next-icon"></span>
				<span class="sr-only" aria-hidden="true">Next</span>
			</a>
		</div><!-- /.carousel -->
	</div><!-- /.container -->
<!-- 메인 케러셀 끝 -->
<!-- ================================================================================================ -->
<!-- ================================================================================================ -->

<!-- 상품 페이지 : 최현석 -->
<!-- 일단은 로직 빼고 간략한 예시 3개만 띄워 놓겠습니다.-->
    <style>
        h1 {
            width: 100%;
            height: 80px;
            background: url(img/top-bg.jpg) no-repeat left top;
            background-size: cover;
            /* 수직 중앙정렬 - height와 동일하게 설정 */
            line-height: 150px;
            /* 글자를 안쪽으로 넣어준다. */
            padding: 25px;
            text-align: center;
        }
        #wrapper {
            width: 90%;
            /* 1100px이상(원본) 늘어나지 않게 한다. */
            max-width: 1100px;
            /* 760px이하로 줄어들지 않는다. */
            min-width: 760px;
            /* 상하마진 50px 좌우마진은 균등(중앙 가로정렬) */
            margin: 50px auto;
        }
        #columns {
            /* 다단컬럼 CSS속성 */
            /* 컬럼 갯수 */
            column-count: 3; /* 기본값 */
            /* 컬럼간의 간격 */
            column-gap: 150px;

        }
        .goods {
            display: inline-block;
            width: 250px;
            background: white;
            box-shadow: 0px 1px 1px #ccc;
            padding: 15px;
            padding-bottom: 15px;
            margin-left: 100px;
             margin-right: 100px;
              margin-top: 25px;
               margin-bottom: 25px;
        }
        .goods img {
            width: 100%;
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
            margin-bottom: 5px;
        }
        .goods p {
            font-family: "나눔 고딕", 돋음;
            color: #333;
            margin: 0;
            padding: 10px;
        }
        /* 미디어쿼리 - 가로너비에 따른 배치나 속성을 준다. */
        @media screen and (min-width:960px) {
            #columns {
                column-count: 3;
            }
        }
        @media screen and (min-width:1100px) {
            #columns {
                column-count: 4;
            }
        }
        </style>
   <h1>상품 리스트</h1>
    <div id="wrapper">
        <div id="columns">
 <!-- ================================================================================================ -->        
            <div class="goods">
                <img src="img/mainGoodsExample/1.png">
                	<span href="#" style="float:right; margin :20px;">
                	<!-- 장바구니 아이콘 -->
			         <svg width="30px" height="30px" color="#5BB9A8" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
					</span>
					<span>
					<!-- 제품 이름, 가격-->
                <p>개존맛 케이크</p>
                <p>21,300 원</p>
					</span>
            </div>
 <!-- ================================================================================================ -->
             <div class="goods">
                <img src="img/mainGoodsExample/1.png">
                	<span href="#" style="float:right; margin :20px;">
                	<!-- 장바구니 아이콘 -->
			         <svg width="30px" height="30px" color="#5BB9A8" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
					</span>
					<span>
					<!-- 제품 이름, 가격-->
                <p>개존맛 케이크</p>
                <p>21,300 원</p>
					</span>
            </div>
 <!-- ================================================================================================ -->
             <div class="goods">
                <img src="img/mainGoodsExample/1.png">
                	<span href="#" style="float:right; margin :20px;">
                	<!-- 장바구니 아이콘 -->
			         <svg width="30px" height="30px" color="#5BB9A8" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
					</span>
					<span>
					<!-- 제품 이름, 가격-->
                <p>개존맛 케이크</p>
                <p>21,300 원</p>
					</span>
            </div>
 <!-- ================================================================================================ -->
             <div class="goods">
                <img src="img/mainGoodsExample/1.png">
                	<span href="#" style="float:right; margin :20px;">
                	<!-- 장바구니 아이콘 -->
			         <svg width="30px" height="30px" color="#5BB9A8" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
					</span>
					<span>
					<!-- 제품 이름, 가격-->
                <p>개존맛 케이크</p>
                <p>21,300 원</p>
					</span>
            </div>
 <!-- ================================================================================================ -->
             <div class="goods">
                <img src="img/mainGoodsExample/1.png">
                	<span href="#" style="float:right; margin :20px;">
                	<!-- 장바구니 아이콘 -->
			         <svg width="30px" height="30px" color="#5BB9A8" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
					</span>
					<span>
					<!-- 제품 이름, 가격-->
                <p>개존맛 케이크</p>
                <p>21,300 원</p>
					</span>
            </div>
 <!-- ================================================================================================ -->
             <div class="goods">
                <img src="img/mainGoodsExample/1.png">
                	<span href="#" style="float:right; margin :20px;">
                	<!-- 장바구니 아이콘 -->
			         <svg width="30px" height="30px" color="#5BB9A8" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
					</span>
					<span>
					<!-- 제품 이름, 가격-->
                <p>개존맛 케이크</p>
                <p>21,300 원</p>
					</span>
            </div>
 <!-- ================================================================================================ -->
 
            
        </div>
    </div>

  <!-- 상품 페이지 로드 코드-->
    <!-- 3x5 로직으로 상품 호출 -->
  <!-- 상품 페이지 로직 코드 끝 -->
<!-- 상품 페이지 끝-->
<!-- ================================================================================================ -->
<!-- 푸터 : 회사소개 최현석 -->
<div>
<footer class="bs-docs-footer" role="contentinfo" style="background-color:#5BB9A8; color=white; text-align: center;">
<br/>
 	<style>
 	 .footer_sentence{
 	 	margin : 20px;
 	 	padding : 20px;
 	 	}
 	</style>
        <div>
        	<span class="footer_sentence" href="#"><h3>회사 소개</h3></span>
        	<br/>
        </div>
        <div>
 		<br/>
        <span>
        	<h7>주식회사</h7>
        	<h3>디저트</h3>
        </span>
       	<span>
       		<p>| 상호명 : 디저트<br/>
				| 사업자등록번호: 000-00-0000<br/>
       		</p>
       		| 공동 대표 : 김도형, 권재현, 홍미나, 최현석 <br/>
			| 통신판매업 신고번호 : 0000-서울노원-0000<br/>
			| 개인정보관리책임자 : 임꺽정<br/>
			| 호스팅 제공 사업자 : 이젠 <br/>
       		<br/>
	       	<p>| 주소: 서울시 노원구 이젠빌딩 401 호 <br/>
			| TEL: 070-000-0000   | FAX: (02)000-0000   | Email: : desert@market.co.kr<br/>
			<br/>
			Copyright 2021 디저트 desert Corp. All Rights Reserved.<br/></p>
       	</span>
        </div>
</footer>
  </div>
</body>
</html>
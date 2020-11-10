<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <!-- 부트스트랩 CSS URL링크 -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
crossorigin="anonymous">

<!-- 부트스트랩 JS URL링크 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
crossorigin="anonymous"></script>
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
crossorigin="anonymous"></script>

    <title>프리미엄 디저트 마켓 : 데저트</title>
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

<body>
  <div style="width: 870px; text-align: center; margin: auto;">
    <table>
        <span style="margin: auto;"><h3>주문 내역
        <div class="dropdown" style="float: right;">
            <a class="btn btn-secondary dropdown-toggle" 
            href="#" 
            role="button" 
            id="dropdownMenuLink"
            data-toggle="dropdown" 
            aria-haspopup="true" 
            aria-expanded="false">
            전체기간
            </a>
        
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" href="#" data-year="2020">2020년</a>
            <a class="dropdown-item" href="#" data-year="2019">2019년</a>
            <a class="dropdown-item" href="#" data-year="2018">2018년</a>
            </div>
        </div>
        </h3>
        </span>
    </table>
        <hr>
        <table style="width: 1170px;">
            <tr>
                <td>2020.11.06(15시00분)</td>
            </tr>
        
            <tr>
                <td>
                    <br>
                    <a href="" >[카테고리] ~~ 상품명 ~~</a>
                </td>
            </tr>

            <tr>
                <table>
                    <tr>
                        <td rowspan="5" colspan="5">
                            <a href=""><img src="a.jpg" alt="이미지 준비중입니다."/ width="320px" height="240px"></a>
                        </td>
                        <td>
                            <table style="width: 550px;">
                                <tr>
                                    <td>
                                        주문번호 : 123456789
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        결제금액 : 15000원
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        주문상세 : 배송완료(배송상태)
                                    </td>
                                <tr>
                                    <td style="float: right;">
                                        <button type="button" class="btn btn-primary">후기쓰기</button>
                                        <br>
                                        <button type="button" class="btn btn-outline-primary">1:1문의</button>
                                    </td>
                                </tr>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </tr>
        </table>
        <tr>
            <table>          

            </table>
        </tr>
    </div>
<!-- 푸터 -->
<jsp:include page="/footer"></jsp:include>
</body>
</html>
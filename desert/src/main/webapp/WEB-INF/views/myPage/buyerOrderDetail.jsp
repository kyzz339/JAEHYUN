<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <title>프리미엄 디저트 마켓 : 데저트</title>
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
<style>
    .center{
        text-align: center;
    }
</style>
<body>
    <p>주문내역 상세</p>

    <div style="border:1px solid white; width: 80%; text-align: center;">
        <div style="float: left; border:1px solid white;">
            <h4>주문번호 1601367137337</h4> 
        </div>
        <div style="border:1px solid white;">
            <div style="text-align: right; border:1px solid white;">
                <h4>배송또는 상품에 문제가 있나요? <a href="1:1 질문">1:1 문의하기</a></h4>
            </div>
        </div>
    </div>
                <table border="1">
                    <tr>
                        <td rowspan="5" colspan="5">
                            <a href=""><img src="a.jpg" alt="이미지 준비중입니다."/ width="320px" height="240px"></a>
                        </td>
                        <td>
                            <table border="1" style="width: 850px;">
                                <tr>
                                    <td>
                                      입력{상품이름}  
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        입력{결제금액}
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        주문상세 : 배송완료(배송상태)
                                    </td>
                                <tr>
                                    <td style="float: right;">
                                        <button type="button">후기쓰기</button>
                                        <br>
                                        <button type="button">1:1문의</button>
                                    </td>
                                </tr>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table> 
                <div style="text-align: center;">  
                <button>전체상품 다시담기</button><button>전체상품 모두 취소</button>  
                </div>       
    <br>
    <br>
    <hr>
    <p>결제정보</p>
    <hr>
    <table style="width: 500px;">
        <tr>
            <td>총주문금액</td>
            <td>입력{총주문금액}</td>
        </tr>
        <tr>
            <td>상품할인</td>
            <td>입력{상품할인}</td>
        </tr>
        <tr>
            <td>쿠폰할인</td>
            <td>입력{쿠폰할인}</td>
        </tr>
        <tr>
            <td>적립금 사용</td>
            <td>입력{적립금사용}</td>
        </tr>
        <tr>
            <td>배송비</td>
            <td>입력{배송비}</td>
        </tr>
        <tr>
            <td>결제금액</td>
            <td>입력{결제금액}</td>
        </tr>
        <tr>
            <td>적립금액</td>
            <td>입력{적립금액}</td>
        </tr>
    </table>
<!-- 푸터 -->
<jsp:include page="/footer"></jsp:include>
</body>
</html>
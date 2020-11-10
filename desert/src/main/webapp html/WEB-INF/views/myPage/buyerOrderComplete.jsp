<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/header.jsp"></jsp:include>
<!-- ================================================================================================ -->
</head>
<style>
    .center{
            text-align: center;
            }
</style>
<body>
    <div>
    <div>
    <h4>주문완료</h4>
    <hr>
    <h4>주문이 완료되었습니다. 이용해주셔서 감사합니다.</h4>
    <h4>주문내역은 [마이페이지>주문내역/배송조회] 에서 다시 확인하실 수 있습니다.</h4>
    </div>
    <div class="center">
        <div>
        <div>
            <h4>주문번호 : 20170101567</h4>
        </div>
        <div>
            <table style="border: 1px solid red; width:60%;height:100px;margin:auto; text-align: left;">
                <tr style="background-color: #F88687;">
                    <th>번호</th><th>상품정보</th><th>수량</th><th>판매가격</th><th>배송비</th>
                </tr>
                <tr>
                    <td>입력{번호}</td>
                    <td> 
                        <div>
                            <div style="float: left;">
                                <img src="C:\Users\kyzz3\OneDrive\바탕 화면/1.jpg" style="width: 100px;">
                            </div>
                            <div style="margin: auto;">
                                    <h4>{상품 이름}</h4>
                                    <h4>색상 : 검정</h4>
                                    <h4>디자인 : 디자인</h4>
                            </div>
                        </div>
                    </td>
                    <td>입력{수량}</td>
                    <td>입력{판매가격}</td>
                    <td>입력{배송비}</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</div>
<div class="center" style="border: 1px solid red;">
    <h4>주문자 정보</h4>
    <div class="center">
        <table style="border: 1px solid red; width:30%;height:100px;margin:auto; text-align: left;">
            <tr>
                <th style="background-color: #F88687;">이름</th>
                <th>입력{이름}</th>
            </tr>
            <tr>
                <th style="background-color: #F88687;">전화번호</th>
                <th>입력{전화번호}</th>
            </tr>
        </table>
    </div>
</div>
<div class="center" style="border: 1px solid red;">
    <h4>배송지 정보</h4>
    <div class="center">
        <table style="border: 1px solid red; width:30%;height:100px;margin:auto; text-align: left;">
            <tr>
                <th style="background-color: #F88687;">이름</th>
                <th>입력{이름}</th>
            </tr>
            <tr>
                <th style="background-color: #F88687;">주소</th>
                <th>입력{주소}</th>
            </tr>
            <tr>
                <th style="background-color: #F88687;">휴대폰</th>
                <th>입력{휴대폰}</th>
            </tr>
            <tr>
                <th style="background-color: #F88687;">요청사항</th>
                <th>입력{요청사항}</th>
            </tr>
        </table>
    </div>
</div>
<div class="center" style="border: 1px solid red;">
    <h4>결제정보</h4>
    <div class="center">
        <table style="border: 1px solid red; width:30%;height:100px;margin:auto; text-align: left;">
            <tr>
                <th style="background-color: #F88687;">결제방법</th>
                <th>입력{결제방법}</th>
            </tr>
            <tr>
                <th style="background-color: #F88687;">결제금액</th>
                <th>입력{결제금액}</th>
            </tr>
        </table>
    </div>
</div>
<div class="center"> 
    <button type="button" onclick="location.href='#'">주문내역/ 배송조회 확인</button>
    <button type="button" onclick="location.href='#'">쇼핑계속하기</button>
    <button type="button" onclick="location.href='#'">메인으로가기</button>
    <button type="button" onclick="location.href='#'">로그아웃</button>
</div>
<!-- ================================================================================================ -->
<!-- 푸터 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
<!-- ================================================================================================ -->
<!--===============================================================================================-->
    </body>
</html>
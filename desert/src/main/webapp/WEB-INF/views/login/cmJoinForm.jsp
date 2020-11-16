<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko" xmlns:th="http://www.thymeleaf.org" xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout" layout:decorator="board/layout/basic">
<head>
    <meta charset="UTF-8"/>
    </head>

<body>
<div style="text-align: center; margin-bottom: 100px ; margin-top:100px">
    <span style="padding: 50px"><a href="sellerJoinForm.jsp">
        <img src="/img/그림1.png" alt="seller" width="200" height="200" ></a></span>
    
    <span style="padding: 50px"><a href="buyerJoinForm.jsp">
        <img src="/img/그림2.png" alt="buyer" width="200" height="200"></a></span>
</div>
<div style="text-align: center; ">
    <a href="#"><button type="button" class="btn btn-light">취소</button></a>
</div>
<script src ="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.js"></script>
</body>
</html>
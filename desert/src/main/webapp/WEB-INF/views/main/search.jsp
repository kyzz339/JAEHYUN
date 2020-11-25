<%@ page import="com.desert.demo.dto.DTOGoods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%ArrayList<DTOGoods> list= (ArrayList<DTOGoods>)session.getAttribute("list");
for(DTOGoods goods:list){
    System.out.println(goods.getIdx());
}

%>

<head>
    <meta charset="UTF-8"/>
      <style>
        .search{
            color: white;
            background-color: #5BB9A8;
            border-radius: 3px;
            border: none;
            padding: 5px;
        }
        .search:hover{
            background-color: #4ea493;
        }
    </style>
</head>
<body>
<div style="margin: 50px 0px;text-align: center">
    <p style="font-weight: bolder;font-size: 30px">상품검색</p>
    <p style="color: #7a787a">당신의 오아시스를 찾아보세요</p>
</div>
<hr style="border: solid 2px #F88687;width: 70%;background-color: #F88687">
<form action="/search" method="post" style="margin: 30px">
    <div class="form-group"style="margin: 20px">
        <div style="display: inline-block ;width: 18%;text-align: right"><label for="exampleInputPassword1">검색조건</label></div>
        <div style="display: inline-block ;width: 60%;margin: 10px"><input name="search" type="search" class="form-control" style="width: 100%" id="exampleInputPassword1"></div>
        <div style="display: inline-block ;width: 18%"><button type="submit" class="search">검색하기</button></div>
    </div>

</form>
<hr style="border: solid 2px #F88687;width: 70%;background-color: #F88687;margin-bottom: 150px">
<p style="padding-left: 15%">총 231건이 검색되었습니다</p>
<hr style="border: solid 1px #c7c5c7;width: 70%;background-color: #c7c5c7;margin-bottom: 20px">
</div>

<div style="width: 70%;margin-bottom: 60px;margin: 0 auto;text-align: center"class="box">
<%--    <c:forEach var="list" items="${list}">--%>
    <% for(DTOGoods goods:list){ %>
    <span class="card" style="width: 25%;display: inline-block;margin: 30px;text-align: center">
        <a href="productDetail?idx=<%goods.getIdx();%>"><img src="<%goods.getImgS();%>>" style="width: 300px;height: 350px ;margin-top: 20px" class="card-img-top"></a>
        <div class="card-body"style="width: 300px;margin: 0 auto">
            <h5 class="card-title"><%goods.getName();%></h5>
            <p class="card-text"><%goods.getContents();%></p>
        </div>
        <div class="card-footer"style="width: 300px;margin: 0 auto">
            <small class="text-muted"><%goods.getPrice();%>>원</small>
        </div>
    </span>
<%--    </c:forEach>--%><%}%>
</div>


<nav aria-label="Page navigation example" style="margin-bottom: 100px">
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
            <a class="page-link" href="#">Next</a>
        </li>
    </ul>
</nav>
</body>

</body>
</html>
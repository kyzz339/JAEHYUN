<%@ page import="com.desert.demo.dto.DTOGoods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%ArrayList<DTOGoods> list= (ArrayList<DTOGoods>) session.getAttribute("list");%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>   
     </head>
  <body>
      <div style="width: 70%;margin-bottom: 60px;margin: 0 auto;text-align: center"class="box">
          <c:forEach var="list" items="${list}">

    <span class="card" style="width: 25%;display: inline-block;margin: 30px;text-align: center">
        <a href="productDetail?idx=${list.idx}"><img src="${list.imgS}" style="width: 300px;height: 350px ;margin-top: 20px" class="card-img-top"></a>
        <div class="card-body"style="width: 300px;margin: 0 auto">
            <h5 class="card-title">${list.name}</h5>
            <p class="card-text">${list.contents}</p>
        </div>
        <div class="card-footer"style="width: 300px;margin: 0 auto">
            <small class="text-muted">${list.price}원</small>
        </div>
    </span>
          </c:forEach>
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
</html>
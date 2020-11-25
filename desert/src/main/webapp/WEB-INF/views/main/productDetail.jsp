<%@ page import="com.desert.demo.dto.DTOGoods" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%
        DTOGoods goods= (DTOGoods) session.getAttribute("goods");
    %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
<style>
#wrap  {
  margin: 0 auto;
  width: 0 auto;
<<<<<<< HEAD
}
=======
}  
>>>>>>> branch 'SimpleDesert' of https://github.com/kyzz339/JAEHYUN.git
 #size{
  margin: auto;
  width: 100px;
  height: auto;
  border: 3px solid green;
  padding: 10px;
}
.center{
    text-align: center;
}
.right{
    text-align: right;
}
.left{
text-align: left;
}
#point{
	 background-color:#F88687;
	 color:black; 
	  }

</style>
<script>

    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 400);

}
</script>
<body>
<br>
<br>
<br>
<br>
    <div class="center" id="wrap">

        <div class="center">
            <div style="float: left; width : 500px; height : 500px;">
                <img src="${goods.imgS}" >
            </div>
            
            <div style="float: left; width : 500px; height : 500px;">
                <div style="margin: 20px">
                    <h4>${goods.category}</h4>
                    <h3>${goods.name}</h3><br>
                    <h4>${goods.price} 원</h4>
                    <h5>로그인 후, 적립혜택이 제공됩니다.</h5>
                </div>
                <div>
                    <div style="padding-right:20px; float: left;">
<%--                        <h3>판매단위</h3>--%>
<%--                        <h3>중량/용량</h3>--%>
<%--                        <h3>배송구분</h3>--%>
                        <div>
                            <h3>수량</h3>
                        </div>
                    </div>
<%--                    <div style="border:1px solid white;">--%>
<%--                        <h3>입력(단위)</h3>--%>
<%--                        <h3>입력(중량)</h3>--%>
<%--                        <h3>입력(배송구분)</h3>--%>
<%--                        <div style="display: inline-block; width:50%; margin: 0;">--%>
                    
                            <button type="button" class="plus" style="border: none;background: none;font-size: x-large">+</button>
                            <input type="number" class="numBox" min="1" max="100" value="1" readonly="readonly" style="text-align:center;font-size: x-large"/>
                            <button type="button" class="minus" style="border: none;background: none;font-size: x-large">-</button>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
<%--                <h3>--%>
<%--                    상품을 선택해 주세요 --%>
<%--                    <select name="items1">--%>
<%--                        <option value="상품선택">선택</option>--%>
<%--                        <option value="우유1">우유1</option>--%>
<%--                        <option value="우유2">우유2</option>--%>
<%--                    </select>--%>
<%--                </h3>--%>
<%--                <h2>총 상품 금액 : <%=in%></h2>--%>
                <div style="margin: 20px"><button style="margin: 10px">재입고 알림</button><button>늘 사는 것</button></div>
            <div><a href=""><button style="padding: 8px;border: #5a6268 1px solid;border-radius: 4px;font-size: large;margin-bottom: 50px">장바구니 담기</button></a></div>
        </div>

        <div class="center" style="clear: both;margin-bottom: 50px">
            <button onclick="fnMove('1')">상품상세설명</button> <button onclick="fnMove('2')">상품문의</button> <button onclick="fnMove('3')">상품평</button> <button onclick="fnMove('4')">교환 및 환불</button>
        </div>
        <div id="div1" class="center">
            <div style="width: 500px;height: 500px;margin:0 auto"><img src="${goods.img}"></div>
            <div style="text-align:center;font-size:large">${goods.contents}</div>
            <br>
        </div>

        
<%--        <div class="center" id="div2">--%>
<%--            <h3> 상품 문의</h3>--%>
<%--            <table id="wrap">--%>
<%--                <tr id="point">--%>
<%--                    <td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>1</td><td>제목제목제목제목제목제목</td><td>권재현</td><td>2020-11-03</td><td>3</td>--%>
<%--                </tr>--%>
<%--            </table>--%>
<%--            </div> --%>
<%--        </div>--%>

<%--        <div id="div3">--%>
<%--        <h3 style="text-align: center"> 상품평</h3>--%>
<%--        <table id="wrap">--%>
<%--            <tr id="point">--%>
<%--                <td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>1</td><td>제목제목제목제목제목제목</td><td>권재현</td><td>2020-11-03</td><td>3</td>--%>
<%--            </tr>--%>

<%--        </table>--%>
<%--        </div>--%>
            <div style="text-align: center;margin-top: 50px" id="div4">
                <h4>환불정책</h4>
                <h4>교환및 환불은 Desert 고객센터로 문의주시면 도움드리겠습니다</h4>
            </div>
        </div>
        <script>
            $(".plus").on("click",(function(){
                var num = $(".numBox").val();
                var plusNum = Number(num) + 1;
        
                if(plusNum > 100) {
                    $(".numBox").val(num);
                } else {
                    $(".numBox").val(plusNum);
                }
            }));
        $(".minus").click(function(){
            var num = $(".numBox").val();
            var minusNum = Number(num) - 1;
        
            if(minusNum < 1) {
                $(".numBox").val(num);
            } else {
                $(".numBox").val(minusNum);
            }
        });
        </script>
    </body>
</html>
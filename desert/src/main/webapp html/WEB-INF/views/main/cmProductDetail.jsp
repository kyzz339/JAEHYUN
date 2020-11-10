<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/header.jsp"></jsp:include>
<!-- ================================================================================================ -->
</head>
<style>
#wrap  {
  margin: 0 auto;
  width: 1000px;
}  
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
    <div class="center" id="wrap">

        <div class="center">
            <div style="float: left;">
                <img width="500px" height="500px" src="C:\Users\kyzz3\OneDrive\바탕 화면/1.jpg" alt="aaaa" >
            </div>
            
            <div style="float: left;">
                <div>
                    <h2>입력(주제목)</h2>
                    <h3>입력(부제목)</h3><br>
                    <h2>입력(가격)</h2>
                    <h3>로그인 후, 적립혜택이 제공됩니다.</h3>
                </div>
                <div>
                    <div style="padding-right:20px; float: left;">
                        <h3>판매단위</h3>
                        <h3>중량/용량</h3>
                        <h3>배송구분</h3>
                        <div>
                            <h3>수량</h3>
                        </div>
                    </div>
                    <div style="border:1px solid white;">
                        <h3>입력(단위)</h3>
                        <h3>입력(중량)</h3>
                        <h3>입력(배송구분)</h3>
                        <div style="display: inline-block; width:50%; margin: 0;">
                            <!--  max값은 추후 ${~~.goodsstock}으로 바꿔야함 -->
                            <button type="button" class="plus" style="border: none;background: none">+</button>
                            <input type="number" class="numBox" min="1" max="100" value="1" readonly="readonly" style="text-align:center"/>
                            <button type="button" class="minus" style="border: none;background: none">-</button>
                        </div>
                    </div>
                </div>
                <h3>
                    상품을 선택해 주세요 
                    <select name="items1">
                        <option value="상품선택">선택</option>
                        <option value="우유1">우유1</option>
                        <option value="우유2">우유2</option>
                    </select>
                </h3>
                <h2>총 상품 금액 : 0원</h2>
                <div><button>재입고 알림</button><button>늘 사는 것</button><button>장바구니 담기</button></div>
    
            </div>
        </div>
        <br>
        <br>
        <br>
        
        <div class="center" style="clear: both;">
            <button onclick="fnMove('1')">상품상세설명</button> <button onclick="fnMove('2')">이미지</button> <button onclick="fnMove('3')">상품문의</button> <button onclick="fnMove('4')">상품평</button> <button onclick="fnMove('5')">교환 및 환불</button>
        </div>
        <div id="div1" class="center">
            <h3>입력(상품상세설명)</h3>
        </div>
        <div id="div2" class="center">
        <img width="500px" height="700px" src="C:\Users\kyzz3\OneDrive\바탕 화면/1.jpg" alt="aaaa" >
        
        </div>
        
        <div class="center" id="div3">
            <div class="center" style="clear: both;">
                <button onclick="fnMove('1')">상품상세설명</button> <button onclick="fnMove('2')">이미지</button> <button onclick="fnMove('3')">상품문의</button> <button onclick="fnMove('4')">상품평</button> <button onclick="fnMove('5')">교환 및 환불</button>
            </div>
            <h3> 상품 문의</h3>

            <table id="wrap">
                <tr id="point">
                    <td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회</td>
                </tr>
                <tr>
                    <td>1</td><td>제목제목제목제목제목제목</td><td>권재현</td><td>2020-11-03</td><td>3</td>
                </tr>
            </table>
            </div> 
        </div>

        <div class="center" id="div4">
            <div class="center" style="clear: both;">
                <button onclick="fnMove('1')">상품상세설명</button> <button onclick="fnMove('2')">이미지</button> <button onclick="fnMove('3')">상품문의</button> <button onclick="fnMove('4')">상품평</button> <button onclick="fnMove('5')">교환 및 환불</button>
            </div>
        <h3> 상품평</h3>
        <table id="wrap">
            <tr id="point">
                <td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회</td>
            </tr>
            <tr>
                <td>1</td><td>제목제목제목제목제목제목</td><td>권재현</td><td>2020-11-03</td><td>3</td>
            </tr>

        </table>
        </div>
        
        <div class="center" id="div5">
            <div class="center" style="clear: both;">
                <button onclick="fnMove('1')">상품상세설명</button> <button onclick="fnMove('2')">이미지</button> <button onclick="fnMove('3')">상품문의</button> <button onclick="fnMove('4')">상품평</button> <button onclick="fnMove('5')">교환 및 환불</button>
            </div>
            <h3> 교환 및 환불</h3>
            <div>
            <img width="250px" height="250px" src="C:\Users\kyzz3\OneDrive\바탕 화면/1.jpg" alt="aaaa" >
            <h3>환불정책 교환및 환불은 Desert 고객센터로 문의주시면 도움드리겠습니다
            </h3>
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
<!-- ================================================================================================ -->
<!-- 푸터 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
<!-- ================================================================================================ -->
<!--===============================================================================================-->
    </body>
</html>
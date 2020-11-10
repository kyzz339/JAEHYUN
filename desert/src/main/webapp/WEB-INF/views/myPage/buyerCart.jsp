<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>프리미엄 디저트 마켓 : 데저트</title>
    <!--===============================================================================================-->
    <!-- 네비게이션 상단메뉴 -->
    <!-- ================================================================================================ -->
    <jsp:include page="/header"></jsp:include>
    <!-- ================================================================================================ -->
        <!-- 페이지 본문 내용을 입력하세요 -->
    <!-- ================================================================================================ -->
      
    <meta charset="UTF-8"/>
    <style>
        *{
            font-family: "나눔스퀘어라운드 Light";

        }
    </style>
</head>
<body>
<div class = "checkbox_group" style="margin:50px">
<h2 style="margin-top: 50px;width:70%;margin: auto;margin-bottom: 20px">장바구니</h2>

    <input class="" type="checkbox" name="exampleRadios" id="check_all" value="option1">
    <label class="form-check-label" for="check_all" style="margin-bottom: 10px"> 전체선택   </label>

    <div style="width: 70%;padding: 20px;border-top: #F88687 2px solid;border-bottom: #F88687 2px solid;">
        <div style="display: inline-block; width: 10%;text-align: center">
            <input class="" type="checkbox" name="exampleRadios" id="cart1" value="option1">
        </div>

        <div style="display: inline-block; width: 22.5%; margin: 0;">
            <img src="http://placehold.it/120x150">
        </div>

        <div style="display: inline-block; width:22.5%; margin: 0;">
            <label class="form-check-label" for="cart1">
                [cake]<br>
                묵직한 한방 케이크
                50,999원
            </label>
        </div>

        <div style="display: inline-block; width:22.5%; margin: 0;">
            <!--  max값은 추후 ${~~.goodsstock}으로 바꿔야함 -->

            <button type="button" class="plus" style="border: none;background: none">+</button>
            <input type="number" class="numBox" min="1" max="100" value="1" readonly="readonly" style="text-align:center"/>
            <button type="button" class="minus" style="border: none;background: none">-</button>

        </div>

        <div style="display: inline-block; width:10%; margin: 0;">
            <a href="#"> <button type="button" class="btn btn-secondary" style="width: 50px;font-size: 12px">삭제</button></a>
        </div>
</div>

    <div style="width: 70%;padding: 20px;border-top: #F88687 2px solid;border-bottom: #F88687 2px solid;">
        <div style="display: inline-block; width: 10%;text-align: center">
            <input class="" type="checkbox" name="exampleRadios" id="cart1" value="option1">
        </div>

        <div style="display: inline-block; width: 22.5%; margin: 0;">
            <img src="http://placehold.it/120x150">
        </div>

        <div style="display: inline-block; width:22.5%; margin: 0;">
            <label class="form-check-label" for="cart1">
                [category]<br> 이름<br> 가격
            </label>
        </div>

        <div style="display: inline-block; width:22.5%; margin: 0;">
            <!--  max값은 추후 ${~~.goodsstock}으로 바꿔야함 -->

            <button type="button" class="plus" style="border: none;background: none">+</button>
            <input type="number" class="numBox" min="1" max="100" value="1" readonly="readonly" style="text-align:center"/>
            <button type="button" class="minus" style="border: none;background: none">-</button>

        </div>

        <div style="display: inline-block; width:10%; margin: 0;">
            <a href="#"> <button type="button" class="btn btn-secondary" style="width: 50px;font-size: 12px">삭제</button></a>
        </div>
    </div>
    <a href="#"> <button type="button" class="dele" style="width: 60px;font-size: 12px;padding: 3px;height: 30px;
                       border-radius: 3px; background-color: #F88687; color: #ffffff;border: none; margin: 10px 0px 30px 0px ">선택삭제</button></a>
</div>
<div>
<div style="width: 80%;margin: 0 auto">
    <div style="display: inline-block;border:#5BB9A8 1px solid;width: 17%;height: 150px">
        <p>상품금액</p>
        <p>상품금액</p>
    </div>
    <div style="display: inline-block;width: 5%;height: 150px">
        <p style="text-align: center">-</p>
    </div>
    <div style="display: inline-block;border:#5BB9A8 1px solid;width: 17%;height: 150px;">
        <p>상품할인금액</p>
        <p>상품할인금액</p>
    </div>
    <div style="display: inline-block;width: 5%;height: 150px;">
        <p style="text-align: center">+</p>
    </div>
    <div style="display: inline-block;border:#5BB9A8 1px solid;width: 17%;height: 150px">
        <p>배송비</p>
        <p>배송비</p>
    </div>
    <div style="display: inline-block;width: 5%;height: 150px">
        <p style="text-align: center">=</p>
    </div>
    <div style="display: inline-block;border:#5BB9A8 1px solid;width: 18%;height: 150px">
        <p>결제예정금액</p>
        <p>포인트 적립금액</p>
    </div>
    </div>


<script src ="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.js"></script>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>

<script>
    //체크박스 전체선택
    $(".checkbox_group").on("click", "#check_all", function () {
        $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
    });

    // 체크박스 개별 선택
    $(".checkbox_group").on("click", ".form-check-input", function() {
        var is_checked = true;

        $(".checkbox_group .form-check-input").each(function(){
            is_checked = is_checked && $(this).is(":checked");
        });

        $("#check_all").prop("checked", is_checked);
    });
    //수량체크
        $(".plus").on("click",(function(){
            var num = $(".numBox").val();
            var plusNum = Number(num) + 1;

            if(plusNum >= 100) {
                $(".numBox").val(num);
            } else {
                $(".numBox").val(plusNum);
            }
        }));
    $(".minus").click(function(){
        var num = $(".numBox").val();
        var minusNum = Number(num) - 1;

        if(minusNum <= 1) {
            $(".numBox").val(num);
        } else {
            $(".numBox").val(minusNum);
        }
    });
    //위에꺼 안될때 대비
    // function change(num) {
    //     var x = document.form;
    //     var y = Number(count.value) + num;
    //     if (y < 1)y = 1;
    //     x.count.value = y;
    // }

    //onclick alert
   $(".dele").click(function(){
       confirm("삭제하시겠습니까?")
   });
</script>
<script src ="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.js"></script>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>

<script>
    //체크박스 전체선택
    $(".checkbox_group").on("click", "#check_all", function () {
        $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
    });

    // 체크박스 개별 선택
    $(".checkbox_group").on("click", ".form-check-input", function() {
        var is_checked = true;

        $(".checkbox_group .form-check-input").each(function(){
            is_checked = is_checked && $(this).is(":checked");
        });

        $("#check_all").prop("checked", is_checked);
    });

    //+ -수량선택 버튼

    //
    //     $(".plus").on("click",(function(){
    //         var num = $(".numBox").val();
    //         var plusNum = Number(num) + 1;
    //
    //         if(plusNum >= 100) {
    //             $(".numBox").val(num);
    //         } else {
    //             $(".numBox").val(plusNum);
    //         }
    //     }));
    //
    // $(".minus").click(function(){
    //     var num = $(".numBox").val();
    //     var minusNum = Number(num) - 1;
    //
    //     if(minusNum <= 1) {
    //         $(".numBox").val(num);
    //     } else {
    //         $(".numBox").val(minusNum);
    //     }
    // });
    function change(num) {
        var x = document.form;
        var y = Number(count.value) + num;
        if (y < 1)y = 1;
        x.count.value = y;
    }
</script>
<!-- 푸터 -->
<jsp:include page="/footer"></jsp:include>
</body>

</html>

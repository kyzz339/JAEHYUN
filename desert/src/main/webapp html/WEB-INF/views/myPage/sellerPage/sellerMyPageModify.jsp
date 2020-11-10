<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
  <meta charset="utf-8">
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
<!-- ================================================================================================ -->

     <!-- ========================================= -->
		<br />
       <h2 style="text-align:center"> 개인 정보 수정 / 탈퇴 </h2><br>
		<br />
<hr style="border: solid 3px #F88687;width: 60%;background-color: #F88687">
<br />
<br />
<form style="padding: 0">
    <div style="width: 450px;margin: 0 auto">
    <div class="form-group">
        <label for="pw">비밀번호</label><br>
        <input type="text" class="form-control" id="pw" placeholder="비밀번호를 입력해 주세요"><br>
    </div>
    <div class="form-group">
        <label for="pwCheck">비밀번호 확인</label><br>
        <input type="text" class="form-control" id="pwCheck" placeholder="비밀번호를 한번 더 입력해 주세요"><br>
    </div>
    <div class="form-group">
        <label for="name">이름</label><br>
        <input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요"><br>
    </div>
    <div class="form-group">
        <label for="email">이메일</label>
        <button type="button" class="btn btn-secondary" style="font-size: 10px;padding: 5px;margin: 10px" >중복 확인</button><br>
        <input type="text" class="form-control" id="email" placeholder="예:DesertBuyer@desert.com"><br>
    </div>
    <div class="form-group">
        <label for="phone">휴대폰</label></br>
        <input type="text" class="form-control" id="phone" placeholder="숫자만 입력해 주세요"><br>
    </div>
        <div class="form-group">

            <label for="phone">우편번호</label>
            <button type="button" class="btn btn-secondary" onclick="openZipSearch()"
                    style="margin: 10px;font-size: 12px;width: 50px;height: 25px">검색</button><br>
            <input type="text" class="form-control" id="address1" placeholder="우편번호" style="width: 120px;margin-right: 20px">
            <input type="text" class="form-control" id="address2" placeholder="주소" style="width: 260px;margin-bottom: 20px"></br>
            <input type="text" class="form-control" id="address3" placeholder="상세주소">

        </div>
    </div>
</form>

<div style="margin: 0 auto; width: 100px;padding-bottom: 50px">
    <a href="#"> <button type="submit" class="btn btn-secondary" >수정하기</button></a>
</div>

<div style="margin: 0 auto; width: 100px;padding-bottom: 100px">
    <a href="#"> <button type="submit" class="btn btn-secondary" >탈퇴하기</button></a>
</div>

<script src ="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.js"></script>
<script>
    /* 비밀번호 일치 여부 체크 */
    function onblur_passwordCheck() {
        $("#createPasswordSpan").remove();
        if ($("#${commandName} #userPw").val() != "" || $("#${commandName} #userPw2").val() != "") {
            if ($("#${commandName} #userPw").val() != $("#${commandName} #userPw2").val()) {
                $(".passwordCheck").append('<span class="createPasswordSpan" id="createPasswordSpan"></span>');
                $("#createPasswordSpan").css("color", "red").css("font-size", "10px").css("margin-left", "10px");
                document.getElementById("createPasswordSpan").innerHTML = "비밀번호가 일치하지 않습니다.";
            }else{
                $(".passwordCheck").append('<span class="createPasswordSpan" id="createPasswordSpan"></span>');
                $("#createPasswordSpan").css("color", "blue").css("font-size", "10px").css("margin-left", "10px");
                document.getElementById("createPasswordSpan").innerHTML = "비밀번호가 일치 합니다.";
            }
        }
    }

    function openZipSearch() {
        new daum.Postcode({
            oncomplete: function(data) {
                $('[id=address1]').val(data.zonecode); // 우편번호 (5자리)
                $('[id=address2]').val(data.address);
                $('[id=address3]').val(data.buildingName);
            }
        }).open();
    }
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


    <!-- 페이지 분문 내용 끝 -->
 <!-- ================================================================================================ -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 <!-- ================================================================================================ -->
 
<!-- 푸터 -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
</body>

</html>

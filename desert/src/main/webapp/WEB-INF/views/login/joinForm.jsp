<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko" xmlns:th="http://www.thymeleaf.org" xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorator="board/layout/basic" xmlns="http://www.w3.org/1999/html">
<head>
    <style>
        *{
            font-family: "나눔스퀘어라운드 Light";
        }
    </style>
</head>

<body>
<h1 style="text-align: center;margin: 70px 30px 30px 30px;font-size: 30px;font-weight: bolder">회원가입</h1>
<hr style="border: solid 3px #F88687;width: 60%;background-color: #F88687">

<form style="padding: 0" action="/joinFormAction" name="joinForm" onsubmit="return checkfield()">
    <div style="width: 450px;margin: 0 auto">
    <div class="form-group">
        <label for="id">아이디</label>
        <button type="button" class="btn btn-secondary" id="idCheck" style="font-size: 10px;padding: 5px;margin: 10px" >중복 확인</button><br>
        <input type="text" class="form-control" name="id" id="id" placeholder="6자 이상의 영문과 숫자 조합, 예) asd123"><br>
    </div>
    <div class="form-group">
        <label for="pw">비밀번호</label><br>
        <input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호를 입력해 주세요"><br>
    </div>
    <div class="form-group">
        <label for="pwCheck">비밀번호 확인</label><br>
        <input type="password" class="form-control" name="pwCheck" id="pwCheck" placeholder="비밀번호를 한번 더 입력해 주세요"><br>
    </div>
    <div class="form-group">
        <label for="name">이름</label><br>
        <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해 주세요"><br>
    </div>
    <div class="form-group">
        <label for="email">이메일</label>
        <button type="button" class="btn btn-secondary" style="font-size: 10px;padding: 5px;margin: 10px" >중복 확인</button><br>
        <input type="text" class="form-control" name="email" id="email" placeholder="예:DesertBuyer@desert.com"><br>
    </div>
    <div class="form-group">
        <label for="phone">휴대폰</label></br>
        <input type="number" class="form-control" name="phone" id="phone" placeholder="숫자만 입력해 주세요"><br>
    </div>
        <div class="form-group">

            <label for="phone">우편번호</label>
            <button type="button" class="btn btn-secondary" onclick="openZipSearch()"
                    style="margin: 10px;font-size: 12px;width: 50px;height: 25px">검색</button><br>
            <input type="text" class="form-control" name="address1" id="address1" placeholder="우편번호" style="width: 120px;margin-right: 20px">
            <input type="text" class="form-control" name="address2" id="address2" placeholder="주소" style="width: 260px;margin-bottom: 20px"></br>
            <input type="text" class="form-control" name="address3" id="address3" placeholder="상세주소">

        </div>
    </div>

    <hr style="border: solid 3px #F88687;width: 60%;background-color: #F88687;margin-bottom: 30px">
    <span style="margin-left: 35%;font-weight: bolder;font-size: larger">
            이용약관동의
        </span>
	<div class="checkbox_group" style="width: 50%;margin-left: auto;float: right;margin-bottom: 50px;">

        <input class="form-check-input" type="checkbox" name="exampleRadios" id="check_all" value="option1">
        <label class="form-check-label" for="check_all">
            전체동의
        </label><br><br>

        <input class="form-check-input" type="checkbox" name="exampleRadios" id="exampleRadios1" value="option1">
        <label class="form-check-label" for="exampleRadios1">
            이용약관 동의(필수)
        </label><br><br>

        <input class="form-check-input" type="checkbox" name="exampleRadios" id="exampleRadios2" value="option2">
        <label class="form-check-label" for="exampleRadios2">
            개인정보처리방침(필수)
        </label><br><br>

        <input class="form-check-input" type="checkbox" name="exampleRadios" id="exampleRadios3" value="option3">
        <label class="form-check-label" for="exampleRadios3">
            무료배송,할인 쿠폰 등 혜택/정보 수신 동의(선택)
        </label><br><br>

        <input class="form-check-input" type="checkbox" name="exampleRadios" id="exampleRadios4" value="option4">
        <label class="form-check-label" for="exampleRadios4">
            본인은 만 14세 이상입니다(필수)
        </label><br>

	</div>
	<div style="margin: 0 auto; width: 100px;padding-bottom: 100px">
		<button type="submit" class="btn btn-secondary">가입하기</button>
	</div>

</form>

<script src ="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.js"></script>
<script type="text/javascript">

</script>
<script>
	//  undefined, null, "빈문자열" 인지 체크하는 함수
	function checkfield() { // 호출할 함수 이름
		if (document.joinForm.id.value == "") { // 문서중에 joinForm이라는 이름아래 id라는id를 가진태그의 value값이 "비어있으면"
			alert("아이디를 입력하세요."); // 경고창으로 문구를 띄워주고
			document.joinForm.id.focus(); // 해당 태그로 포커스를 줘서 바로 입력할 수 있게 해준다.
			return false; // 해당 if문이 true라는건 비어있기때문인데 서버로 전송되면 안되기때문에 false로 전송을 막아준다.
		}

		// 아이디 중복 확인
// 	$(function() {
// 		$("input[ name='id']").on("change", function() {
// 			var id = $('#idCheck').val();
// 			alert("id : " + id);
// 		});
// 	});
	function idCheck() {
		var user_id = document.joinForm.id.value
		alert(userid);
	}
		
		if (document.joinForm.pw.value == "") {
			alert("비밀번호를 입력하세요.");
			document.joinForm.pw.focus();
			return false;
		}
		if (document.joinForm.pwCheck.value == "") {
			alert("비밀번화 확인을 입력하세요.");
			document.joinForm.pwCheck.focus();
			return false;
		}
		
		// 비밀번호와 비밀번호 확인이 똑같은지 체크
		if (document.joinForm.pw.value != document.joinForm.pwCheck.value) { // 비밀번호가 다를 경우
			alert('비밀번호가 서로 다릅니다 확인해주세요.');
			document.joinForm.pwCheck.focus();
			return false;
		}
		if (document.joinForm.name.value == "") {
			alert("이름을 입력하세요.");
			document.joinForm.name.focus();
			return false;
		}
		if (document.joinForm.email.value == "") {
			alert("이메일을 입력하세요.");
			document.joinForm.email.focus();
			return false;
		}
		if (document.joinForm.phone.value == "") {
			alert("핸드폰번호를 입력하세요.");
			document.joinForm.phone.focus();
			return false;
		}
		if (document.joinForm.address1.value == "") {
			alert("주소를 입력하세요.");
			document.joinForm.address1.focus();
			return false;
		}
		if (document.joinForm.address2.value == "") {
			alert("주소를 입력하세요.");
			document.joinForm.address2.focus();
			return false;
		}
		if (document.joinForm.address3.value == "") {
			alert("상세주소를 입력하세요.");
			document.joinForm.address3.focus();
			return false;
		}

		if (!document.joinForm.exampleRadios1.checked) {
			alert('필수 이용약관 동의 하셔야 합니다.');
			return false;
		}
		if (!document.joinForm.exampleRadios2.checked) {
			alert('필수 이용약관 동의 하셔야 합니다.');
			return false;
		}
		if (!document.joinForm.exampleRadios4.checked) {
			alert('필수 이용약관 동의 하셔야 합니다.');
			return false;
		}
		
	}

//     //체크박스 전체선택
    $(".checkbox_group").on("click", "#check_all", function () {
        $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
    });


    

//     // 체크박스 개별 선택
//     $(".checkbox_group").on("click", ".form-check-input", function() {
//         var is_checked = true;

//         $(".checkbox_group .form-check-input").each(function(){
//             is_checked = is_checked && $(this).is(":checked");
//         });

//         $("#check_all").prop("checked", is_checked);
//     });
    
    /* 비밀번호 일치 여부 체크 */
//     function onblur_passwordCheck() {
//         $("#createPasswordSpan").remove();
//         if ($("#${commandName} #userPw").val() != "" || $("#${commandName} #userPw2").val() != "") {
//             if ($("#${commandName} #userPw").val() != $("#${commandName} #userPw2").val()) {
//                 $(".passwordCheck").append('<span class="createPasswordSpan" id="createPasswordSpan"></span>');
//                 $("#createPasswordSpan").css("color", "red").css("font-size", "10px").css("margin-left", "10px");
//                 document.getElementById("createPasswordSpan").innerHTML = "비밀번호가 일치하지 않습니다.";
//             }else{
//                 $(".passwordCheck").append('<span class="createPasswordSpan" id="createPasswordSpan"></span>');
//                 $("#createPasswordSpan").css("color", "blue").css("font-size", "10px").css("margin-left", "10px");
//                 document.getElementById("createPasswordSpan").innerHTML = "비밀번호가 일치 합니다.";
//             }
//         }
//     }
    
    // 비밀번호 유효성 검사
	function passwordCheck(str){
	
		var pw = str;
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	if(pw.length < 8 || pw.length > 20){
		 alert("8자리 ~ 20자리 이내로 입력해주세요.");
		 return false;
	}
	if(pw.search(/₩s/) != -1){
		alert("비밀번호는 공백업이 입력해주세요.");
		return false;
	} 
	if(num < 0 || eng < 0 || spe < 0 ){
		alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
		return false;
	}
 return true;
}

// 	if(!passwordCheck( $.trim($('#pw').val()))){
// 	   $('#pw').val('');
// 	   $('#pw').focus();
// 	   return false;
// 	}

//     function openZipSearch() {
//         new daum.Postcode({
//             oncomplete: function(data) {
//                 $('[id=address1]').val(data.zonecode); // 우편번호 (5자리)
//                 $('[id=address2]').val(data.address);
//                 $('[id=address3]').val(data.buildingName);
//             }
//         }).open();
//     }
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</body>

</html>
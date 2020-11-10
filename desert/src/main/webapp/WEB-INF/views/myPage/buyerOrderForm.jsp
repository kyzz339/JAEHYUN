<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="/header"></jsp:include>
<!-- ================================================================================================ -->
</head>
    <script 
    src="https://code.jquery.com/jquery-3.5.1.js" 
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
    crossorigin="anonymous">
</script>
</head>
<style>
    .order{
            width: 400px;
            height: 100px;
            }
    .center{
            text-align: center;
            }
    .floating{ position: fixed;
                right: 50%; 
                top: 180px; 
                margin-right: -720px; 
                text-align:center; 
                width: 250px; 
            }
</style>
<body>
    <div class="center">
        <h1>주문서</h1>
        <h5>주문하실 상품명 및 수량을 정확하게 확인해 주세요</h5>
    </div>
    <div class="center">
        <div style="border: 1px solid red; width:60%;height:100px;margin:auto; text-align: left;">
            <h3>상품 정보</h3>
        </div>
    </div>

    <div class="center">
        <form name="write_form_member" method="post">
            <table style="border: 1px solid red; width:60%;height:100px;margin:auto; text-align: left;">
                    <tr>
                    <th>이름</th>
                    <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <th>*연락처</th>
                        <td><input type="text" name="tel1"> - 
                        <input type="text" name="tel2"> -
                        <input type="text" name="tel3">
                        </td>
                    </tr>
                    <tr>
                        <th>이름(회사)</th>

                        <td> <input type="text" name="mbid"><a href='#' style='cursor:pointer'></a></td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td>
                            <input type="text" id="sample6_postcode" placeholder="우편번호">
                            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" id="sample6_address" placeholder="주소"><br>
                            <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                            <input type="text" id="sample6_extraAddress" placeholder="참고항목">
                        </td>
                    </tr>
                    <tr>
                        <th>*휴대폰</th>
                        <td>
                            <input type="text" name="hand1">
                            <input type="text" name="hand2">
                            <input type="text" name="hand3">
                        </td>
                    </tr>
                    <tr>
                        <th>요청사항</th>
                        <td>
                            <p><textarea cols="50" rows="10"></textarea></p>
                        </td>
                    </tr>
                </table>
                <div class="center">
                    <h1>쿠폰/적립금</h1>
                </div>
                <div class="center">
                    <div style="border: 1px solid red; width:60%;height:100px;margin:auto; text-align: left;">
                        <h3>쿠폰적용</h3>
                    </div>
                </div>
                <div class="center">
                    <table style="border: 1px solid red; width:60%;height:100px;margin:auto; text-align: left;">
                        <tr>
                            <th>총 상품가격</th>
                            <td>13000 원</td>
                        </tr>
                        <tr>
                            <th>포인트 사용</th>

                            <td>
                                <div>
                                    <div style=" margin: 0; display: inline-block;">
                                    <input type="text" name="point"> <button>적용</button>
                                    </div> 
                                    <div style=" height: 50%;margin: 0;display: inline-block;">
                                    <h6>보유 포인트({보유 포인트}원) (100포인트 단위로 사용)</h6>
                                </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>일반결제</th>
                            <td><input type="radio" name="payment" value="무통장입금">무통장입금
                            <input type="radio" name="payment" value="카드결제">카드결제
                            <input type="radio" name="payment" value="계좌이체">계좌이체
                            <input type="radio" name="payment" value="가상계좌">가상계좌
                            </td>
                        </tr>
                        <tr>
                            <th>에스크로 결제</th>
                            <td><input type="radio" name="askpayment" value="계좌이체">계좌이체
                            <input type="radio" name="askpayment" value="가상계좌">가상계좌
                        </td>
                        </tr>
                    </table>
                </div>
                    <input type="submit" value="구입하기">
                    <input type="reset" value="다시작성">
        </form>
        <div class="floating" style="border: 1px solid red;">
            <table>    
                <tr>
                    <th>주문금액</th>
                    <td>13000 원</td>
                </tr>
                <tr>
                    <th>상품금액</th>
                    <td>15000 원</td>
                </tr>
                <tr>
                    <th>상품할인</th>
                    <td>3000 원</td>
                </tr>
                <tr>
                    <th>배송비</th>
                    <td>3000 원</td>
                </tr>
                <tr>
                    <th>쿠폰할인</th>
                    <td>3000 원</td>
                </tr>
                <tr>
                    <th>적립금사용</th>
                    <td>3000 원</td>
                </tr>
                <tr>
                    <th>최종결제금액</th>
                    <td>3000 원</td>
                </tr>
            </table>
        </div>
    </div>
    


    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<!-- ================================================================================================ -->
<!-- 푸터 -->
<!-- ================================================================================================ -->
<jsp:include page="/footer"></jsp:include>
<!-- ================================================================================================ -->
<!--===============================================================================================-->
    </body>
</html>
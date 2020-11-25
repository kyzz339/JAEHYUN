<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
</head>
<body>
<!--===============================================================================================-->
<!-- 로그인 : 최현석 -->
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-5 p-b-5">
				<form action="/findpw" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-30">
						비밀번호 찾기
					</span>
					<span class="logo" >
						<img src="/img/logo.png" alt="logo" style="display: block; margin: 0 auto; width:150px; height:150px;">
					</span>
					<div class="wrap-input100 validate-input m-t-35 m-b-35" data-validate = "아이디를 입력하세요!">
						<input class="input100" type="text" name="id">
						<span class="focus-input100" data-placeholder="회원님의 아이디를 입력하세요."></span>
					</div>

					<div class="wrap-input100 validate-input m-b-50" data-validate="이름을 입력하세요!">
						<input class="input100" type="text" name="name">
						<span class="focus-input100" data-placeholder="회원님의 이름을 입력하세요."></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="이메일을 입력하세요!">
						<input class="input100" type="email" name="email">
						<span class="focus-input100" data-placeholder="회원님의 이메일을 입력하세요."></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" style="background-color:#F88687;  box-shadow: 5px 5px 5px 5px;">
							비밀번호 변경하기
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/bootstrap/js/popper.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/daterangepicker/moment.min.js"></script>
	<script src="/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/js/main.js"></script>
</body>
</html>
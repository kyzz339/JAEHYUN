<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../cmPage/header.jsp"></jsp:include>
<jsp:include page="../../cmPage/sidebar.jsp"></jsp:include>

<style type="text/css">
h3 {
    text-align: center;
}
.table_1 {
	width: 700px;
	margin: auto;
	/* margin-left: 15%; */
}
.div_input{
    margin-left: 1100px;
    /* border: 1px solid black; */
}
.table_2 {
	height: 200px;
	padding: 20px;
}

.table_3 {
	padding: 20px;
	width: 100%;
}
</style>
</head>
<body>

	<h3>등록된 상품</h3>
	<div class="div_input">
		<input type="text" >
		<button type="button">검색</button>
	</div>
	<hr>
	<!-- for문돌려서 DB에 저장된정보들 list로 가져옴 -->
	<table class="table_1">
		<br>
		<tr>
			<td rowspan="5"><a href=""> <img src="asd.jpg" width="280"
					height="200" />
			</a></td>
			<td>
				<table class="table_2">
					<tr>
						<td>판매상품 : (꽃)</td>
					</tr>
					<tr>
						<td>판매가격 : (29000원)</td>
					</tr>
					<tr>
						<td>등록날짜 : 2020/11/05</td>
					</tr>
					<tr>
						<td>매출액 (99999원)</td>
						<td>
							<table class="table_3">
								<tr>
									<td>
										<button type="button">수정</button>
										<button type="button">삭제</button>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<hr>
	<!-- 여기까지 반복 -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
</body>
</html>
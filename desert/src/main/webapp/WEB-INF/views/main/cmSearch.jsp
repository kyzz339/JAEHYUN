<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Title</title>
   
 <!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="/header"></jsp:include>
<!-- ================================================================================================ -->
 
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
<form style="margin: 30px">
    <div class="form-group"style="margin: 20px">
        <div style="display: inline-block ;width: 18%;text-align: right"><label for="exampleInputPassword1">검색조건</label></div>
        <div style="display: inline-block ;width: 60%;margin: 10px"><input type="search" class="form-control" style="width: 100%" id="exampleInputPassword1"></div>
        <div style="display: inline-block ;width: 18%"><button type="submit" class="search">검색하기</button></div>
    </div>

</form>
<hr style="border: solid 2px #F88687;width: 70%;background-color: #F88687;margin-bottom: 150px">
<p style="padding-left: 15%">총 231건이 검색되었습니다</p>
<hr style="border: solid 1px #c7c5c7;width: 70%;background-color: #c7c5c7;margin-bottom: 20px">
</div>
<div style="width: 70%;margin: auto;margin-bottom: 60px">
<div class="card-deck" style="margin: 20px">
    <div class="card">
        <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">현석이네 공갈빵</h5>
            <p class="card-text">둘이 먹다가 재현이가 죽어도 몰라 띠용</p>
        </div>
        <div class="card-footer">
            <small class="text-muted">9999원</small>
        </div>
    </div>
    <div class="card">
        <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">내용 넣어주세용.</p>
        </div>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">내용 넣어주세용</p>
        </div>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
</div>
</div>

<div style="width: 70%;margin:auto;margin-bottom: 60px">
    <div class="card-deck" style="margin: 20px">
        <div class="card">
            <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">현석이네 공갈빵</h5>
                <p class="card-text">둘이 먹다가 재현이가 죽어도 몰라 띠용</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">9999원</small>
            </div>
        </div>
        <div class="card">
            <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">내용 넣어주세용</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
        <div class="card">
            <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">내용 넣어주세용 </p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
    </div>
</div>

<div style="width: 70%;margin: auto;margin-bottom: 60px">
    <div class="card-deck" style="margin: 20px">
        <div class="card">
            <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">현석이네 공갈빵</h5>
                <p class="card-text">둘이 먹다가 재현이가 죽어도 몰라 띠용</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">9999원</small>
            </div>
        </div>
        <div class="card">
            <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">내용 넣어 주세용.</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
        <div class="card">
            <img src="http://placehold.it/120x150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">내용 넣어주세용.</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
    </div>
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
<!-- 푸터 -->
<jsp:include page="/footer"></jsp:include>
</body>

</body>
</html>
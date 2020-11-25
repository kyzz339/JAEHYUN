<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

.input-group-text {
    width: 100px;
    height: 0 auto;
    
}
table {
    width: 400px;
    margin-right: auto;
    margin-left: auto;
}
form {
    text-align: center;
}

</style>

</head>
<body>
    <h3 style="text-align: center;margin: 30px">상품 등록</h3>
    <form style="margin: 20px" action="/goodsRegForm" method="post" enctype="multipart/form-data">
        <table > <!-- 전체 윤곽-->
            <tr>
                <tr>
                    <td>
                        <table class="select_img" border="1" height="410">
                            <tr>
                                <td>
                                    <img src=""/>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table height="370"> <!-- 왼쪽 테이블 윤곽 -->
                            <div class="input-group mb-1" >
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">카테고리</label>
                                </div>
                            <select class="custom-select" name="category" id="inputGroupSelect01"style="width: 50px; height: auto;">
                                <option selected>선택</option>
                                <option value="bread">빵(Bread)</option>
                                <option value="cookie">쿠키(Cookie)</option>
                                <option value="macaroon">마카롱(Macaroon)</option>
                                <option value="cake">케이크(Cake)</option>
                                <option value="drink">마실것(Drink)</option>
                                <option value="etc">기타(ECT)</option>
                            </select>
                            </div>
                    <tr>
                        <td>
                            <div class="input-group mb-1">
                                <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default">상품명</span>
                                </div>
                                <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="input-group mb-1">
                                <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default">판매가격</span>
                                </div>
                                <input type="text" name="price" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"placeholder="숫자만입력">
                            </div>
                        </td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--&lt;%&ndash;                            <div class="input-group mb-1">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="input-group-prepend">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <span class="input-group-text" nameid="inputGroup-sizing-default">판매단위</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    --%>
                    <tr>
                        <td>
                            <div class="input-group mb-1">
                                <div class="input-group-prepend">
                                <span class="input-group-text">제품설명</span>
                                </div>
                                <textarea name="contents" class="form-control" aria-label="width textarea"></textarea>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="input-group mb-1">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupFileAddon01">대표이미지</span>
                                </div>

                                <div class="custom-file">
                                    <input type="file" name="file" class="custom-file-input" id="file" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="inputGroupFile01"></label>
                                </div>
                            </div>
                            <%=request.getRealPath("/")%>
                            <script>
                                $("#file").change(function(){
                                    if(this.files&&this.files[0]){
                                        var reader=new FileReader;
                                        reader.onload=function (data){
                                            $(".select_img img").attr("src",data.target.result).width(400);
                                        }
                                        reader.readAsDataURL(this.files[0]);
                                    }
                                });
                            </script>



                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="input-group mb-1">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupFileAddon01">상세이미지</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="inputGroupFile01"></label>
                                </div>
                            </div>
                    </td>
                    </tr>
                    <span>
                    </span>
                    </table>
                    </td>
                </tr>
            </tr>
        </table>
        <div style="margin: 30px">
        <button type="submit" class="btn btn-outline-secondary" >등록</button>
<%--        <button type="button" class="btn btn-outline-secondary" onclick="location.href= 'sellerRegList'>취소</button>--%>
        </div>
    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<!--===============================================================================================-->
<!-- 네비게이션 상단메뉴 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/header.jsp"></jsp:include>
<!-- ================================================================================================ -->
</head>
<style>
#box{
		padding: 5px;
		border-top: 1px solid black;
	}
aside {
	float: left;
}
.centered{ display: table; margin-left: auto; margin-right: auto; }
.solid{
	border-style:solid;
}
#point{
	 background-color:#F88687;
	 color:black; 
	  }
.colum{
	height:30px;
}
#bottom{
padding-bottom:10px;
	}
</style>
</head>
<body>
<div>
<div class="solid">
<img class="aside" alt="icon" src="leaf.png" border="10px" align="left" height="75px"><p>무엇을 도와드릴 까요?</p><p>궁금한 사항이나 불편한 사항은 저희 고객센터로 전화 주시거나 1:1 문의로 남겨주세요.<br>
<p>친절히 안내해 드립니다.</p> 
</h3>
</div>
<main>
<aside>
<div class="list-group" id="bottom">
<h1 class="list-group-item" id="point">고객센터</h1>
<a href="#" class="list-group-item">공지사항</a>
<a href="#" class="list-group-item">자주하는 질문</a>
<a href="#" class="list-group-item">상품 문의</a>
<a href="#" class="list-group-item">1:1 문의하기</a>
<!-- <a href="#" class="list-group-item">아이디 찾기</a>
<a href="#" class="list-group-item">비밀번호 찾기</a> -->
</div>

<div>
<div class="list-group"></div>
<div id="point" align="center" class="colum"><h2>고객센터</h2></div>
<div class="list-group-item" align="center">010-111-1111</div>
<div class="list-group-item" align="center">평일10시~18시</div>
<div class="list-group-item" align="center">공휴일 주말 휴무</div>
</div>
</aside>
<!-- help-page -->
<div class="faq-w3agile">
    <div class="container"> 
        <h2 class="w3_agile_header">Frequently asked questions(FAQ)</h2> 
        <ul class="faq">
            <li class="item1"><a href="#" title="click here">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor vehicula ipsum nec ?</a>
                <ul>
                    <li class="subitem1"><p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item2"><a href="#" title="click here">The standard Lorem Ipsum passage Etiam faucibus viverra libero vel efficitur. Ut semper nisl ut laoreet ultrices ?</a>
                <ul>
                    <li class="subitem1"><p> Tincidunt ut laoreet dolore At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item3"><a href="#" title="click here">Consectetuer adipiscing elit Etiam faucibus viverra libero vel efficitur. Ut semper nisl ut laoreet ultrices?</a>
                <ul>
                    <li class="subitem1"><p>Dincidunt ut laoreet dolore At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item4"><a href="#" title="click here">Sed diam nonummy nibh euismod Etiam faucibus viverra libero vel efficitur. Ut semper nisl ut laoreet ultrices?</a>
                <ul>
                    <li class="subitem1"><p>At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li> 
            <li class="item5"><a href="#" title="click here">Euismod tincidunt laoreet Etiam faucibus viverra libero vel efficitur ?</a>
                <ul>
                    <li class="subitem1"><p>At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item6"><a href="#" title="click here">Voluptas sit aspernatur aut Ut semper nisl ut laoreet ultrices ?</a>
                <ul>
                    <li class="subitem1"><p>At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item7"><a href="#" title="click here">Donec ut quam ligula feugiat Ut semper nisl ut laoreet ultrices ?</a>
                <ul>
                    <li class="subitem1"><p>At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item8"><a href="#" title="click here">The standard Lorem Ipsum Ut semper nisl ut laoreet ultrices passage ?</a>
                <ul>
                    <li class="subitem1"><p>Lorem ipsum dolor sit amet At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item9"><a href="#" title="click here">Consectetuer adipiscing Ut semper nisl ut laoreet ultrices elit ?</a>
                <ul>
                    <li class="subitem1"><p>Lorem ipsum dolor sit amet At vero eos et Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li>
            <li class="item10"><a href="#" title="click here">Sed diam nonummy Ut semper nisl ut laoreet ultrices nibh euismod ?</a>
                <ul>
                    <li class="subitem1"><p>Consectetuer adipiscing elit, sed diam nonummy nibh euismod  consectetuer adipiscing elit, sed diam nonummy nibh euismod accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p></li>										
                </ul>
            </li> 
        </ul> 
        <!-- script for tabs -->
        <script type="text/javascript">
            $(function() {
            
                var menu_ul = $('.faq > li > ul'),
                       menu_a  = $('.faq > li > a');
                
                menu_ul.hide();
            
                menu_a.click(function(e) {
                    e.preventDefault();
                    if(!$(this).hasClass('active')) {
                        menu_a.removeClass('active');
                        menu_ul.filter(':visible').slideUp('normal');
                        $(this).addClass('active').next().stop(true,true).slideDown('normal');
                    } else {
                        $(this).removeClass('active');
                        $(this).next().stop(true,true).slideUp('normal');
                    }
                });
            
            });
        </script>
        <!-- script for tabs -->   
    </div>
</div>

<div class="centered">
<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>
</main>
</div>
<!-- ================================================================================================ -->
<!-- 푸터 -->
<!-- ================================================================================================ -->
<jsp:include page="../../cmPage/footer.jsp"></jsp:include>
<!-- ================================================================================================ -->
<!--===============================================================================================-->
    </body>
</html>

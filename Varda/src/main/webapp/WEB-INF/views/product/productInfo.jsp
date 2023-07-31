<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/resources/css/style_productInfo.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <title>제품 목록</title>
  
</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<body>
<%@ include file= "menu.jsp" %>
<div id="mainContainer"> <!-- mainContainer -->
	<div class="container"> <!-- container -->
	
		<div class="row"> <!-- row -->
	<form id="productInfo" action="productInfo/${pdId}">
			<div id="photo" class="col-md-4">
				<img src="/images/${pdId}" class="제품사진" style=" width:300px; height:300px;">
			</div> 
	    	<div id=product class="col-md-6"> 
				<h2><b>${productVO.pdName}</b></h2>
				<p><b>${productVO.pdPrice}</b></p>
				<div class="btn-group">
				<button id ="buy" class="btn btn-info" onclick="location-href='order/orderForm'" style="width:120px; height:60px;">주문하기</button>
				<button type="submit" id="cartbutton" class="btn btn-warning" style="width:120px; height:60px;">장바구니</button>
				</div>
			</div>
	</form>
	
		</div> <!-- row -->
	</div><!-- container -->
	<hr>

    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
      <button type="button" class="btn btn-danger" onclick = "location.href = '#'">제품상세</button>
      <button type="button" class="btn btn-success" onclick = "location.href = '#'">사용후기</button>
    </div>
	<hr>
	<div class = "상세페이지">
	  <img src="/images/sub/${pdId}">
	</div>
</div>
    <!-- footer -->
    <footer>
      <div id="bottomMenu">
        <ul>
          <li><a href="http://kibwagg.org" target="_blank">회사소개</a></li>
          <li><a href="https://www.google.com/maps/place/%EB%B9%84%ED%8A%B8%EC%BB%B4%ED%93%A8%ED%84%B0/data=!4m14!1m7!3m6!1s0x357ca15aee90018b:0x84022faa1e2f1172!2z67mE7Yq47Lu07ZOo7YSw!8m2!3d37.4946!4d127.0276056!16s%2Fg%2F1td1z5w1!3m5!1s0x357ca15aee90018b:0x84022faa1e2f1172!8m2!3d37.4946!4d127.0276056!16s%2Fg%2F1td1z5w1">회사위치</a></li>
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">자주묻는질문</a></li>
        </ul>
        <div id="sns">
          <ul>
            <li>
              <a href="https://ko-kr.facebook.com/"><img src="/resources/img/sns-1.png" /></a>
            </li>
            <li>
              <a href="https://www.youtube.com/"><img src="/resources/img/sns-2.png" /></a>
            </li>
            <li>
              <a href="https://www.instagram.com/"><img src="/resources/img/sns-3.png" /></a>
            </li>
          </ul>
        </div>
      </div>
      <div id="company">
        <p>서울특별시 서초구 서초대로 74길 33</p>
      </div>
    </footer>
</body>


	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script>

	$(document).ready(function(){
		$("#cartbutton").click(function(){
			if(${not empty loginId}){
				alert('있다');
				$.get("../../cart/productInfo/${productVO.pdId}?pdId=${productVO.pdId}",
						function(){
							if(confirm("이동할까요?")){location.href="/../../cart/cartList"};
						}
				);
				return;
			}
			alert('로그인이 필요합니다.');
		});
	});
	
	</script>
</html>
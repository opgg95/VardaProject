<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/resources/css/style_log.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <title>제품 목록</title>
  <style>
    .제품사진{
      width: 300px;
      height: 200px;
      margin: 10px 0 0 5px;
      padding-bottom: 20px;
    }
    .num_nav_wrap{
      display: inline-block;
      vertical-align: top;
    }
    #product_page{
      font-size: 2.2em;
      margin-right: 20px;
      line-height: 100px;
      color: #000;
    }
    .prod_num_nav {
    margin-top: 20px;
    text-align: center;
    }
    .prod_num_nav{
      margin-top: 20px;
    }
    .edge_nav {
    margin-right: 6px;
    }
    .edge_nav {
    float: left;
    margin: 0 3px;
    width: 28px;
    height: 28px;
    text-align: center;
    color: transparent;
    font-size: 20px;
    line-height: 28px;
}
.prod_num_nav .number_wrap {
    float: left;
    overflow: hidden;
    padding-left: 5px;
    font-size: 14px;
    line-height: 27px;
    *zoom: 1;
}


  </style>
</head>
<body>
  <div id="mainContainer">

<div class="container">
    <ul class="row">
 
    	<c:forEach var="products" items="${products}"> 
    	 <li class="col-md-4" id="products">
        <a href='<c:url value="/product/productInfo/${products.pdId}"/>'><img src="/images/${products.pdId}" class="제품사진"></a>
        <h6><a href='<c:url value="/product/productInfo/${products.pdId}"/>'><b>${products.pdName}</b></a></h6>
        <p><b># ${products.pdTag}</b></p>
        <h6><b>${products.pdPrice}</b></h6>
         </li>
    	</c:forEach>

    </ul>
  </div>

  <!-- 제품 하단 페이지 넘기기 -->
  <div class ="prod_num_nav">
    <div class="num_nav_wrap">
      <div class="number_wrap">
        <a href="#" id ="product_page" title="prev_page" onclick="javascript:movePage(-1); return false;" onmousedown="_trkEventLog('상품_페이지')"><i class="fas fa-chevron-left"></i></a>
        <a href="#" id="product_page" onclick="return false" class="num now_on" onmousedown="_trkEventLog('상품_페이지')">1</a>
        <a href="#" id="product_page" onclick="javascript:movePage(2); return false;" class="num" onmousedown="_trkEventLog('상품_페이지')">2</a>
        <a href="#" id="product_page" onclick="javascript:movePage(3); return false;" class="num" onmousedown="_trkEventLog('상품_페이지')">3</a>
        <a href="#" id="product_page" title="next_page" onclick="javascript:movePage(1); return false;" onmousedown="_trkEventLog('상품_페이지')"><i class="fas fa-chevron-right"></i></a>
      </div>
    </div>
  </div>
  </div>
    <!-- footer -->
    <footer>
      <div id="bottomMenu">
        <ul>
          <li><a href="http://kibwagg.org" target="_blank">회사소개</a></li>
          <li><a href="https://www.google.com/maps/place/%EB%B9%84%ED%8A%B8%EC%BB%B4%ED%93%A8%ED%84%B0/data=!4m14!1m7!3m6!1s0x357ca15aee90018b:0x84022faa1e2f1172!2z67mE7Yq47Lu07ZOo7YSw!8m2!3d37.4946!4d127.0276056!16s%2Fg%2F1td1z5w1!3m5!1s0x357ca15aee90018b:0x84022faa1e2f1172!8m2!3d37.4946!4d127.0276056!16s%2Fg%2F1td1z5w1">회사위치</a></li>
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">자주묻는질문</a></li>
        </ul>
        <div id="sns">
          <ul>
            <li>
              <a href="#"><img src="/resources/img/sns-1.png" /></a>
            </li>
            <li>
              <a href="#"><img src="/resources/img/sns-2.png" /></a>
            </li>
            <li>
              <a href="#"><img src="/resources/img/sns-3.png" /></a>
            </li>
          </ul>
        </div>
      </div>
      <div id="company">
        <p>서울특별시 서초구 서초대로 74길 33</p>
      </div>
    </footer>
</body>
<script>
//   var productList = document.getElementById("product-list");
//   for (var i = 0; i < products.length; i++) { 
//     var product = products[i];
//     var li = document.createElement("li");
//     var img = document.createElement("img");
//     img.src = product.img;

//     //<h6> 요소 생성
//       var heading = document.createElement("h6");
//       heading.textContent = product.name;

//           // <ul> 요소 생성
//     var tagList = document.createElement("ul");
    
//     // 각 태그에 대해 반복
//     for (var j = 0; j < product.tags.length; j++) {
//       var tag = product.tags[j];
      
//       // <li> 요소 생성
//       var tagItem = document.createElement("li");
//       tagItem.textContent = tag;
      
//       // <li> 요소를 <ul> 요소에 추가
//       tagList.appendChild(tagItem);
//     }
    
//     // <li> 요소에 <img>, <h3>, <ul> 요소 추가
//     listItem.appendChild(img);
//     listItem.appendChild(heading);
//     listItem.appendChild(tagList);
    
//     // <li> 요소를 <ul> 요소에 추가
//     productList.appendChild(listItem);
//     }

// // 페이지 로드 후, 상품 목록을 동적으로 생성
//   window.onload = renderProductList;

  var currentPage=1;
  // 상품에 표시될 상품 수
  var ProductsPerPage=3; 
  // 전체상품 목록을 받아옴
  // var allProducts = getProduct();
  
  // 총 상품 갯수
  var totalItems=products.length; // var totalItems = allProducts.length;
  //전체 페이지수
  totalPages = Math.ceil(totalItems/ProductsPerPage) // products.length = 9 이므로, totalPages = 3 이다.

  function movePage(page){
    if(page==1 and currentPage >1){
      currentPage--;
    }else if(page>=2 and currentPage < maxPage):{
      currentPage++;
    }
    currentPage=page;
    loadProduct();
  }
  function loadProduct(){
    var startIndex = (currentPage-1)*ProductsPerPage;
    var endIndex = startIndex + ProductsPerPage;
    var productsToDisplay = products.slice(startIndex,endIndex) // startIndex ~ endIndex미만까지 새 배열(리스트)로 반환
  }
  var productHtml = '';
    for (var i = 0; i < productsToDisplay.length; i++) {
      var product = productsToDisplay[i];
      productHtml += '<li class="col-md-4">';
      productHtml += '<img src="' + product.img + '" class="제품사진">';
      productHtml += '<h6><b>'
      }
</script>
</html>
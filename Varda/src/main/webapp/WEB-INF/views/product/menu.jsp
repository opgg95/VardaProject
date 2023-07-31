<%@ page contentType="text/html; charset=utf-8" %>
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="/resources/css/style_log.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Product</title>
     <style>
    .제품사진{
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
    <!-- header -->
    <h1 class = "box_title-logo" style ="margin-bottom:0;">
      <a href = "#" id = "varda_logo">
        <img src = "/resources/img/varda_header.png" style="width:250px; height:200px;">
      </a>
    </h1>
    <header>
      <div id="logo">
        <img src="/resources/img/varda_logo.jpg" alt="logo" style="width:220px; height:100px">
      </div>
      <div id="searchBox" class="search-container">
        <form method="get" action="#">
          <input type="text" placeholder="상품 검색">
          <i class="fas fa-search search-icon"></i>
          <button type="submit"><img src="/resources/img/search.png" alt="검색" width="30" height="25"></button>
        </form>
      </div>
      <div class="menu-logout">
        <nav class="menuNav">
            <ul class="menu">
                <li><a href="#"><img src="/resources/img/cart.png" alt="장바구니" class="cart" style="width:40px; height:40px;"></a></li>
                <li><a href="#"><img src="/resources/img/mypage.png" alt="마이페이지" class="mypage" style="width:30px; height: 30px;"></a></li>
            </ul>
        </nav>
      </div>  
      </header>
      </div>
  <nav class="topMenuNav">
    <ul id="topMenu">
      <li>
        <a href="#">All</a>
      </li>
      <li>
        <a href="#">Men/Women <span>▼</span></a>
        <ul>
          <li><a href="#">남성용</a></li>
          <li><a href="#">여성용</a></li>
        </ul>
      </li>
      <li><a href="#">Skin Type <span>▼</span></a>
        <ul>
          <li><a href="#">건성</a></li>
          <li><a href="#">지성</a></li>
          <li><a href="#">복합성</a></li>
        </ul>
      </li>
      <li>
        <a href="#">Product <span>▼</span></a>
        <ul>
          <li><a href="#">스킨/에센스</a></li>
          <li><a href="#">로션/크림</a></li>
          <li><a href="#">클렌징</a></li>
          <li><a href="#">선크림</a></li>
          <li><a href="#">마스크팩</a></li>
          <li><a href="#">미스트</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</body>
</html>
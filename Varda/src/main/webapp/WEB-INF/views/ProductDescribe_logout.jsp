<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style_log.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <title>제품 목록</title>
  <style>
    .제품사진{
      display: flex;
      justify-content: flex-start;
      width: 650px;
      height: 450px;
      margin: 10px 0 0 5px;
      padding-bottom: 20px;
    }
    #container{
      display: flex;
      text-align: center;
      align-items: center;
    }
    p b{
      font-size: 50px;
      color:blueviolet
    }
    #addform{
      margin-top: 200px;
    }
    #buy{
      font-size: 23px;
      margin-right: 10px;
    }
    #button-buy{
      color: azure;
      font-size: 24px;
    }
  </style>
</head>
<body>
  <div id="mainContainer">
    <!-- header -->
    <h1 class = "box_title-logo" style ="margin-bottom:0;">
      <a href = "#" id = "varda_logo">
        <img src = "img/varda_logo.jpg" style="width:250px; height:120px;">
      </a>
    </h1>
    <header>
      <div id="logo">
        <img src="img/logo.jpg" alt="logo" style="width:220px; height:120px">
      </div>
      <div id="searchBox" class="search-container">
        <form method="get" action="#">
          <input type="text" placeholder="상품 검색">
          <i class="fas fa-search search-icon"></i>
          <button type="submit"><img src="img/search.png" alt="검색" width="30" height="25"></button>
        </form>
      </div>
      <div class="menu-logout">
        <nav class="menuNav">
            <ul class="menu">
                <li><a href="#"><img src="img/cart.png" alt="장바구니" class="cart" style="width:40px; height:40px;"></a></li>
                <li><a href="#"><img src="img/logout.png" alt="로그아웃" class="mypage" style="width:30px; height: 30px;"></a></li>
            </ul>
        </nav>
      </div>
    </header>
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
          <li><a href="#">스킨</a></li>
          <li><a href="#">로션</a></li>
          <li><a href="#">수분크림</a></li>
          <li><a href="#">앰플 & 세럼</a></li>
          <li><a href="#">마스크팩</a></li>
          <li><a href="#">미스트</a></li>
        </ul>
      </li>
    </ul>
  </nav>
  <!-- 제품목록 부분-->

  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <img src="img/스킨1.jpg" class="제품사진" style="width:100%">
      </div>
    <div calss="col-md-6">
      <h2><b>헤라옴므 에센스 스킨 125ml</b></h2>
      <p><b>12,000원</b></p>

      <form name = "addForm" action="" method="post"> <!-- 나중에 action에 상품주문 jsp파일 삽입 -->
        <hr id="addform">
        <a href="#" id ="buy" class="btn btn-info" onclick="addToCart()" style="width:120px; height:60px;"text-align="center"><b>주문하기</b></a>
        <a href="./cart.jsp" id="buy" class="btn btn-warning" style="width:120px; height:60px;"text-align="center"><b>장바구니</b></a>
      </form> 
    </div>
  </div>
  <hr>
  <div class="btn-group">
    <button type="button" class="btn btn-danger" id="button-buy"><b>제품상세</b></button>
    <a href="#"></a>
    <button type="button" class="btn btn-success" id="button-buy"><b>사용후기</b></button>
    <a href="#"></a>
  </div>
  <hr>
  <div class = "상세페이지">
    <img src="img/제품상세페이지1.jpg">
  </div>
    <!-- footer -->
    <footer>
      <div id="bottomMenu">
        <ul>
          <li><a href="http://kibwagg.org" target="_blank">회사소개</a></li>
          <li><a href="#">회사위치</a></li>
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">자주묻는질문</a></li>
        </ul>
        <div id="sns">
          <ul>
            <li>
              <a href="#"><img src="img/sns-1.png" /></a>
            </li>
            <li>
              <a href="#"><img src="img/sns-2.png" /></a>
            </li>
            <li>
              <a href="#"><img src="img/sns-3.png" /></a>
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
</script>
</html>
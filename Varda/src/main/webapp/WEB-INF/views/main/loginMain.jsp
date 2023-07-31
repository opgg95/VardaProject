<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Varda</title>
    <link rel="stylesheet" href="/resources/css/style_log.css" />
  </head>
<style>
  .image-container {
    justify-content: center;
    align-items: center;x
    top: 0;
    left: 0;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 9999;
    position: fixed;   /*position: fixed relative;*/
    display: flex; /* display: flex inline-block; */
  }

  .close-icon {
    position: absolute;
    top: 0;
    right: 0;
    color: #fff;
    font-size: 24px;
    cursor: pointer;
    padding: 5px;
    background-color: rgba(0, 0, 0, 0.7);
  }
</style>

<script>
  function openImage(event) {
    event.preventDefault();
    var imgUrl = event.target.getAttribute('href');

    var imageContainer = document.createElement('div');
    imageContainer.classList.add('image-container');

    var img = document.createElement('img');
    img.src = imgUrl;
    imageContainer.appendChild(img);

    var closeIcon = document.createElement('span');
    closeIcon.classList.add('close-icon');
    closeIcon.textContent = 'X';
    closeIcon.onclick = function() {
      document.body.removeChild(imageContainer);
    };
    imageContainer.appendChild(closeIcon);

    document.body.appendChild(imageContainer);
  }
</script>
  <body>
    <div id="mainContainer">
        <!-- header -->
      <header>
        <div id="logo">
            <img src="/resources/img/varda_header.png" style="width:220px; height:150px;">
		</div>
        <div class="menu-logout">
          <nav class="menuNav">
              <ul class="menu">
                  <li><a href="../cart/cartList"><img src="/resources/img/cart.png" alt="장바구니" class="cart"></a></li>
                  <li><a href="../mypage/update"><img src="/resources/img/mypage.png" alt="마이페이지" class="mypage"></a></li>
                  <li><a href="../customer/logout"><img src="/resources/img/logout.png" alt="로그아웃" class="logout"></a></li>  
              </ul>
              	
          </nav>
      </div>
      <h2>${message}</h2>
      </header>
      <nav class="topMenuNav">
        <ul id="topMenu">
        <form action="/product/productList" method="post">
          <li>
            <a href="#">All</a>
          </li>
          <a href="#">Product <span>▼</span></a>
          <select name="pd_type">
            <option value="스킨">스킨</option>
            <option value="로션">로션</option>
            <option value="수분크림">수분크림</option>
            <option value="앰플 & 세럼">앰플 & 세럼</option>
            <option value="마스크팩">마스크팩</option>
             <option value="미스트">미스트</option>
          </select>
            
            <a href="#">Men/Women <span>▼</span></a>
             <select name="gender">
            	<option value="1">남성용</option>
                <option value="2">여성용</option>
             </select>   
          
          <a href="#">Skin Type <span>▼</span></a>
          <select name="skin_type">
              <option value="건성">건성</option>
              <option value="지성">지성</option>
              <option value="복합성">복합성</option>
           </select>   
           <input type="submit" value="검색">
          </form> <fmt:message key="/productList"/>
        </ul>
      </nav>
      
      
      
      <!-- sildeshow -->
      <div id="slideShow">
        <div id="slides">
          <img src="/resources/img/photo-1.jpg" alt="" />
          <img src="/resources/img/photo-2.jpg" alt="" />
          <img src="/resources/img/photo-3.jpg" alt="" />
          <button id="prev">&lang;</button>
          <button id="next">&rang;</button>
        </div>
      </div>
      <!-- 본문 -->
      <div id="contents">
        <div id="tabMenu">
          <input type="radio" id="tab1" name="tabs" checked />
          <label for="tab1">공지사항</label>
          <input type="radio" id="tab2" name="tabs" />
          <label for="tab2"><a href="http://kibwagg.org">회사소개</a></label>

          <div id="notice" class="tabContent">
            <h2>공지사항</h2>
            <ul>
            <li>
            <a href="/resources/img/택배지연안내.jpg" onclick="openImage(event)">
              일부 지역 배송 지연 안내
              </a>
              </li>
              <li>
              <a href="/resources/img/환불안내.jpg" onclick="openImage(event)">
              취소 및 환불 주의사항 안내
              </a>
              </li>
              <li>
              <a href="/resources/img/가격인상.png" onclick="openImage(event)">
              제품 가격 인상 안내
              </a>
              </li>
            </ul>
          </div>
        </div>
        <div id="links">
          <ul>
            <li>
                <p>
            <a href="/resources/img/할인이벤트1.png" onclick="openImage(event)">
            <span id="quick-icon1" style="background-image:url('/resources/img/할인1.jpg')"></span> 할인이벤트 1
            </a>
            </p>
         </li>
            <li>
                <p>
            <a href="/resources/img/할인이벤트2.png" onclick="openImage(event)"> 
            <span id="quick-icon2" style="background-image:url('/resources/img/할인2.jpg')"></span> 할인이벤트 2
            </a>
            </p>
         </li>
            <li>
                <p>
            <a href="/resources/img/할인이벤트3.png" onclick="openImage(event)">
             <span id="quick-icon3" style="background-image:url('/resources/img/할인3.jpg')"></span> 할인이벤트 3
            </a>
            </p>
         </li>
          </ul>
        </div>
      </div>
      <!-- footer -->
      <footer>
        <div id="bottomMenu">
          <ul>
            <li><a href="http://kibwagg.org" target="_blank">회사소개</a></li>
            <li><a href="https://www.google.com/maps/place/%EB%B9%84%ED%8A%B8%EC%BB%B4%ED%93%A8%ED%84%B0/data=!4m14!1m7!3m6!1s0x357ca15aee90018b:0x84022faa1e2f1172!2z67mE7Yq47Lu07ZOo7YSw!8m2!3d37.4946!4d127.0276056!16s%2Fg%2F1td1z5w1!3m5!1s0x357ca15aee90018b:0x84022faa1e2f1172!8m2!3d37.4946!4d127.0276056!16s%2Fg%2F1td1z5w1">회사위치</a></li>
            <li><a href="#">개인정보처리방침</a></li>
            <li><a href="../main/css_login">자주묻는질문</a></li>
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
    </div>
    <script src="/resources/js/slideshow.js"></script>
  </body>
</html>
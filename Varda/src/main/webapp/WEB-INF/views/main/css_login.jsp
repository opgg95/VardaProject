<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Varda 고객센터</title>
    <link rel="stylesheet" href="/resources/css/cs_login.css" />
</head>
<body>
    <header>
        <div id="logo">
            <img src="/img/logo.jpg">
		    </div>
        <div class="menu-logout">
          <nav class="menuNav">
              <ul class="menu">
                  <li><a href="#"><img src="/resources/img/cart.png" alt="장바구니" class="cart"></a></li>
                  <li><a href="#"><img src="/resources/img/mypage.png" alt="마이페이지" class="mypage"></a></li>
                  <li><a href="#"><img src="/resources/img/logout.png" alt="로그아웃" class="logout"></a></li>  
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
        </ul>
      </nav>
      
      <div class="jb-wrap">
        <div class="jb-image"><img src="/resources/img/banner.png" alt=""></div>
        <div class="jb-text">
            <div class="jb-text-table">
                <div class="jb-text-table-row">
                    <div class="jb-text-table-cell">
                        <blockquote class="blockquote text-center">
                            <br> <br><br>
                            <h3 class="display-3">고객센터</h3>
                            <small class="text-muted">무엇을 도와드릴까요?</small>
                          </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
   

    <div class="my-2">
    <div class="container">
        
        <div class="my-5">
            <div class="media" >
                <img src="/resources/img/varda-5.png" class="mr-3">
                <div class="media-body">
                  <h5 class="mt-0">TEL 02-7561-7574</h5>
                  <p>varda_cs@varda.co.kr</p>
                  <p>고객센터 운영시간 9:00~17:00</p>
                </div>
              </div>
        </div>

        <ul class="qna">
        <li>
            <input type="checkbox" id="qna-1">
            <label for="qna-1">픽업 서비스가 궁금해요</label>
            <div>
                <p>온라인몰에서 상품을 구매하고, 원하는 매장에서 상품을 수령하는 서비스입니다.
                    원하는 매장을 선택하여 주문하시고 해당 매장에서 상품 준비가 완료되면 바코드가 발송됩니다.
                    바코드 수신 후 선택한 매장에 방문하시어 상품을 수령해주세요.
                    ※현재 일부 매장에서만 픽업 서비스 이용이 가능하며, 순차적으로 확대될 예정입니다.
                    픽업 서비스에 대한 상세 안내는 하기 페이지를 참고해주세요.</p>
            </div>
        </li>
        <li>
            <input type="checkbox" id="qna-2">
            <label for="qna-2">교환&반품도 매장에서 하면 되나요?</label>
            <div>
                <p>매장에서 교환은 어려우며, 온라인몰을 통한 교환/반품 신청이 필요합니다.

                    [마이페이지-주문내역] 교환/반품 신청을 통해 아래 방법으로 처리해주세요.
                    교환 : 회수 택배 기사님을 통해 물류센터로 교환 
                    반품 : 회수 택배 기사님을 통해 물류센터로 반품 / 오프라인 매장에 방문하여 직접 반품
                    단, 매장 반품의 경우 일부 매장에 한해 가능하므로 반품접수 페이지에서
                    "가능매장찾기"를 이용하시어 확인 후 반품접수 부탁드립니다.    </p>
            </div>
        </li>
        <li>
            <input type="checkbox" id="qna-3">
            <label for="qna-3">배송비는 얼마인가요?</label>
            <div>
                <p>배송비는 실결제금액 기준 2만원 이상 결제 시 무료이며, 2만원 이하 결제의 경우 기본적으로 배송비는 2,500원입니다.

                    ※ 추가 배송비가 발생하는 경우
                     - 도서산간: +2,500원 (5,000원)
                     - 제주도:  +2,500원 (5,000원)
                     - 제주도의 도서산간 지역:  +7,000원 (9,500원)
                      ※ 업체배송 상품의 경우 업체의 규정에 따라 비용이 상이할 수 있습니다.</p>
            </div>
        </li>
        <li>
            <input type="checkbox" id="qna-4">
            <label for="qna-4">반품할 때 비용이 드나요?</label>
            <div>
                <p>반품 시 지불하셔야 하는 반품비용은 회수비 2,500원입니다.
                    단, 매장반품의 경우 별도 회수비용 없이 반품가능합니다.
                    
                    ※ 추가비용이 발생하는 경우
                     - 도서산간: +2,500원 (5,000원)
                     - 제주도:  +2,500원 (5,000원)
                     - 제주도의 도서산간 지역:  +7,000원 (9,500원)
                     - 무료배송이었으나 부분적인 반품으로 인해 무료배송 조건(결제금액 2만원 이상)이 깨진 경우
                       :  면제받으셨던 초기 배송비 2,500원 추가 발생
                       *  오늘드림 배송 옵션 별 상이 발생 
                    
                    ※ 반품비는 환불금액에서 차감처리 됩니다.
                    ※ 업체배송 상품의 경우 업체의 규정에 따라 비용이 상이할 수 있습니다.
                    ※ 상품의 불량, 배송 오류 등 당사의 실수로 인한 반품의 경우, 반품에 필요한 비용은 당사가 부담합니다.</p>
            </div>
        </li>
        <li>
            <input type="checkbox" id="qna-5">
            <label for="qna-5">반품은 언제까지 가능한가요?</label>
            <div>
                <p>반품은 상품을 수령하신 날짜를 기준으로 15일 이내에 가능합니다.
                    다만 상품의 불량, 배송 오류 등 당사의 실수로 인한 반품인 경우, 30일 이내 신청이 가능합니다.</p>
            </div>
        </li>
    </ul>
</div>
</div>

  
</body>
</html>
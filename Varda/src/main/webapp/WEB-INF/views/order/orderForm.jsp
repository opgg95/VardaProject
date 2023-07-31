<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("detailAddress").focus();
                }
            }).open();
        }
    </script>
    <style>
        header{
            margin-top: 30px;
            margin-bottom: 90px;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
        header {
            width: 100%;
            height: 100px;
            background-color: #FFF;
        }

        #logo {
            float: left;
            width: 250px;
            height: 100px;
            line-height: 100px;
            padding-left: 20px;
        }

        nav {
            float: right;
            width: 900px;
            height: 100px;
            padding-top: 40px;
        }

        .menu { float: right; list-style: none; }
        .menu li { float: left; }
        .menu a { line-height: 75px; padding: 0 15px; display: block;}
        .cart {
            width: 30px;
            height: 30px;
            margin: 10px;
        }
        .mypage {
            width: 20px;
            height: 20px;
            margin: 10px;
        }
        .mypage {
            width: 20px;
            height: 20px;
            margin: 10px;
        }
        .logout {
            width: 20px;
            height: 20px;
            margin: 10px;
        }
        #order_button {
            float: right;
            margin: 10px;
        }
    </style>
</head>
<body>
    <!-- header -->
        <header>
        <div id="logo">
            <img src="/resources/img/logo.jpg">
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
        </header>
    <!--header 끝-->

    <div class="container" >
        <form action="/order/orderForm" method="post">

         <div style="margin-left: 300px;">
            <label for="orderusername" class="text-muted">이름 <span class="badge badge-info">필수</span></label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" class="form-control form-control-lg" required>
                    </div>
                 </div>
            </div> 
        </div>   
        <br> 
        <div style="margin-left: 300px;">
            <label for="username" class="text-muted">전화번호 <span class="badge badge-info">필수</span></label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" name ="odPhone" class="form-control form-control-lg" placeholder="- 없이 입력하세요" required>
                    </div>
                 </div>
            </div> 
        </div>
        <br>
        <div style="margin-left: 300px;">
            <label for="username" class="text-muted">주소 <span class="badge badge-info">필수</span></label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    
                    <div class="input-group mb-3">
                        <input type="text" class="form-control form-control-lg" id="postcode" name="odAdd" placeholder="우편번호" aria-label="Recipient's username" aria-describedby="button-addon2" required>
                        <div class="input-group-append">
                             <button class="btn btn-outline-secondary" type="button" onclick="execDaumPostcode()">찾기</button>
                        </div>
                    </div>
                    <input class="form-control form-control-lg" type="text" id="address" placeholder="주소" required><br>
                    <div class="input-group">
                        <input type="text" aria-label="First name" class="form-control form-control-lg" id="detailAddress" placeholder="상세주소" required>
                        <input type="text" aria-label="Last name" class="form-control form-control-lg" id="extraAddress" placeholder="참고항목">
                    </div>
                </div>
            </div>
            <br>
        </div> 
        <button class="btn btn-outline-danger" id="order_button" onclick="history.back()">취소</button>
        <button type="submit" class="btn btn-outline-primary" id="order_button" >제출</button>
        </form>
    </div> 

    <!--container 끝-->

<footer>
    <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
</footer>
    <script>
        function orderCancel() {
            alert("주문이 취소되었습니다.");
            window.location.href="main_login.html";
        }
        function orderSuccess() {
            alert("주문이 완료되었습니다.");
            window.location.href="main_login.html";
        }
    </script>
</body>
</html>
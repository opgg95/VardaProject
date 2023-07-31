<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>장바구니 빈페이지</title>
    <link rel="stylesheet" href="css/emptyCart.css">
</head>
<body>
    <div class="cart">
        <h1>SHOPPING CART</h1>
        <table>
            <colgroup>
            <col style="width:110px" />
            <col style="width:110px" />
            <col style="width:80px" />
            <col style="width:80px" />
            <col style="width:80px" />
            <col style="width:80px" />
            </colgroup>
                <thead>
                    <tr>
					<th scope="col" colspan="2">상품정보</th>
					<th scope="col">상품금액</th>
					<th scope="col">수량</th>
					<th scope="col">합계</th>
					<th scope="col">삭제</th>
                    </tr>
                </thead>
                 <tbody>
                    <tr>
                        <td colspan="6" class="no_data">장바구니에 담겨있는 상품이 없습니다.</td>
                    </tr>	
                </tbody>
        </table>
        <div class="mainbtn">
            <button type="submit" class="orderbtn left" onclick="shoppingContinue()">쇼핑 계속하기</button>
        </div>
    </div>
    <script src="js/empty_cart.js"></script>
</body>
</html>
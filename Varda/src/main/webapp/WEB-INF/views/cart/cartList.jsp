<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 페이지</title>
<link rel="stylesheet" href="css/cart.css">
<script>

</script>
</head>
<body>
    <div class="cart">
        <h2>SHOPPING CART</h2>
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
					<th scope="col">삭제</th>
                    </tr>
                </thead>
                <tbody>
					<c:forEach var="cart" items="${list}"> 
						<tr>
						<td><input type="hidden" name="checkPd" value="${cart.cPdId}"></td>
						<td scope="col"><img src="/images/${cart.cPdId}" class="제품사진"></td>
						<td scope="col"><h6><b>${cart.pdName}</b></h6></td>
						<td scope="col"><h6><b>${cart.PdPrice}</b></h6></td>
						<td scope="col"><button type="submit" class="delbtn" onclick="delCart(${cart.cartNum})"><b>X</b>삭제</button></td>
						</tr>
			    	</c:forEach>	
                 </tbody>
        </table>
        <div class="mainbtn">
            <button class="orderbtn left" onclick="history.back()">쇼핑 계속하기</button>
            <button type="submit" class="orderbtn right" onclick="Order()">주문하기</button>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
function delCart(cartNum){
	$.get("../../cart/delete/"+cartNum+"",
			function(){
				location.href="../../cart/cartList";
	});
}
	
function Order(){
	location.href="../../order/cartOrder";
}


	
	


</script>

</html>
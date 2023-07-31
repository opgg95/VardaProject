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
$(function(){
	${".orderbtn left".click(function(){
		location.href="cart/cartList";
	})};
	${".orderbtn right".click(function(){
		location.href="../order/orderForm";
	})};
	${".delbtn".click(function(){
		location.href="cart/delete";
	})};
})
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
                    <th>체크</th>
					<th scope="col" colspan="2">상품정보</th>
					<th scope="col">상품금액</th>
					<th scope="col">수량</th>
					<th scope="col">합계</th>
					<th scope="col">삭제</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="checkbox" name="pChecked" value="${list.pdId}"></td>
                        <td><span><a href="../product/productInfo.jsp"><img src="${list.pdImg}"></a></span></td>
                        <td><span><a href="../product/productInfo.jsp">${list.pdName}</a></span></td>
                        <td><span>${list.pdPrice}</span><br></td>
                        <td><span>1개</span><br></td>
                        <td><span>${list.pdPrice}</span><br></td>
                        <td><button type="submit" class="delbtn" onclick="delList()"><b>X</b>삭제</button></td>
                    </tr>
<!--                     <tr>
                        <td><input type="checkbox" name="pChecked" value="2"></td>
                        <td><span><a href="../product/productInfo.jsp"> <img src="#" alt="이미지"></a></span></td>
                        <td><span><a href="../product/productInfo.jsp">내추럴 히아루로닉 크림</a></span></td>
                        <td><span>116,620원</span><br></td>
                        <td><span>1개</span><br></td>
                        <td><span>116,620원</span><br></td>
                        <td><button type="submit" class="delbtn" onclick="delList()"><b>X</b>삭제</button></td>
                    </tr>	 -->
					<c:forEach var="carts" items="${carts}"> 
						<tr>
							<td><input type="checkbox" name="" value=""></td>
							<td><img src="${pdImg}" class="제품사진"></td>
						</tr>
					  		
							<h6><b>${pdName}</b></h6>
							<p><b>#${pdTag}</b></p>
							<h6><b>${pdPrice}</b></h6>
			    	</c:forEach>	
                 </tbody>
        </table>
<!--         <div class="total"> <span><strong>총 주문 금액: 233,240원</strong></span></div> -->
        <div class="mainbtn">
            <button type="submit" class="orderbtn left">쇼핑 계속하기</button>
            <button type="submit" class="orderbtn right">주문하기</button>
        </div>
    </div>
    <script src="js/cart.js"></script>
</body>
</html>
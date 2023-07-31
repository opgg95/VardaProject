<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문목록</title>
    <link rel="stylesheet" href="/resources/css/orderlist.css">
</head>
<body>
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header> 
<!--header 끝!-->

<div class="container">
<table class="table table-hover" id="tablemiddle">
    <thead>
      <tr>
        <th scope="col">주문번호</th>
        <th scope="col" class="productimage"></th>
        <th scope="col" class="description">상품정보</th>
        <th scope="col">가격</th>
        <th scope="col">리뷰</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orderList}">
   
      <tr> 
      	<form>
	        <th scope="row">${order.oodNum}</th>
	        <td><img src="resources//images/${order.oPdId}"></td>
	        <td>${order.pdName}</td>
	        <td><span style="font-weight: bold;">${order.pdPrice}</span>원</td>
	        <td><button onclick="location.href='/review/review/{order.oPdId}'" class="btn btn-secondary">리뷰</button></td>
      	</form>
      </tr>
      
      </c:forEach>
      
    </tbody>
  </table>
</div> 


<!--footer 시작!-->
    <footer>
        <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
    </footer>
    
</body>
</html>
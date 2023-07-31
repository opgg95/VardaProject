<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <% --%>
<!-- // String applyScore = request.getParameter("applyScore"); -->
<!-- // String stimulationScore = request.getParameter("stimulationScore"); -->
<!-- // String satisfactionScore = request.getParameter("satisfactionScore"); -->
<!-- // String massage = request.getParameter("massage"); -->

<!-- // out.println("applyScore : "+ applyScore +"<br>"); -->
<!-- // out.println("stimulationScore : "+ stimulationScore +"<br>"); -->
<!-- // out.println("satisfactionScore : "+ satisfactionScore +"<br>"); -->
<!-- // out.println("massage : "+ massage +"<br>"); -->
<%-- %>    --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <th scope="col" name="rvId">리뷰 번호</th>
        <th scope="col" name="cId">아이디</th>
        <th scope="col" class="description" name="content">상품 후기</th>
        <th scope="col" name="applyScore">발림성</th>
        <th scope="col" name="stimulationScore">자극도</th>
        <th scope="col" name="satisfactionScore">만족도</th>
        <th scope="col" name="writeDate">작성일</th>
      </tr>
    </thead>
    
<%-- 				<tr c:if test="${not #lists.isEmpty(reviewList)}" c:each="l : ${reviewList}"> --%>
<%-- 					<td th:text="${l.cId}"></td> --%>
<%-- 					<td th:text="${l.pdId}"></td> --%>
<%-- 					<td th:text="${l.applyScore}"></td> --%>
<%-- 					<td th:text="${l.writeDate}"></td> --%>
<%-- 					<td th:text="${l.memberEmail}"></td> --%>
<%-- 					<td th:text="${l.memberAddr}"></td> --%>
<%-- 					<td th:text="${l.memberRegDate}"></td> --%>
<!-- 				</tr> -->
				
<%-- 				<tr th:unless="${not #lists.isEmpty(memberList)}"> --%>
<!-- 					<td colspan="7">등록된 회원의 정보가 없습니다.</td> -->
<!-- 				</tr> -->
<!-- 			</tbody> -->
			
    <tbody>
    <c:forEach var="user" items="${list}">
    <tr>
        <td>${list.rvId}</td>
        <td>${list.cId}</td>
        <td>${list.applyScore}</td>
        <td>${list.stimulationScore}</td>
        <td>${list.satisfactionScore}</td>
        <td>${list.writeDate}</td>
    </tr>  
    </c:forEach>
    
<!--       <tr> -->
<!--         <th scope="row">1</th> -->
<!--         <th scope="row">abc</th> -->
<!--         <td>메디힐 피토엔자인 각질 앰플 더블 기획 (1+1)</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td>2월2일</td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <th scope="row">2</th> -->
<!--         <th scope="row">eee</th> -->
<!--         <td>메디힐 피토엔자인 각질 앰플 더블 기획 (1+1) 어쩌구 저쩌구 길게 상품명이 있으면 이런 느낌입니다요 </td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td>4월2일</td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <th scope="row">3</th> -->
<!--         <th scope="row">dddd</th> -->
<!--         <td>짧게 어쩌구 저쩌구 앰플</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td><span style="font-weight: bold;">5.0</span>점</td> -->
<!--         <td>5월2일</td> -->
<!--       </tr> -->
    </tbody>
  </table>
</div> 

    
</body>
</html>
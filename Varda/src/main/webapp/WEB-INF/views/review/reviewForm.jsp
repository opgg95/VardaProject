<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 페이지</title>
<script src="/resources/js/reviewForm.js"></script>
<link rel="stylesheet" href="/resources/css/reviewForm.css"/>
</head>
<body>
    <!-- header -->
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header>  
    <!--header 끝!-->
    <div class="review-write">
			<form action="/review/reviewTab" method="post" name="inputForm" onsubmit="return checkForm();">
       
           <h2>REVIEW</h2>
           <table>
               <colgroup>
               <col style="width:100px" />
               <col style="width:200px" />
               </colgroup>
                   <thead>
                       <tr>
                  <th scope="col" colspan="2"></th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td><span><a href="product.html"> <img src="/resources/img/img-1.jpg" width="200px" height="200px" alt="이미지"></a></span></td>
                           <td><span><a href="product.html">내추럴 블랑 히아루로닉 크림</a></span></td>
                       </tr>
                   </tbody>
           </table>
           <br><br><br>
           <div class="form-check form-check-inline">
               <strong>발림성 &nbsp;&nbsp;&nbsp; </strong>
               <input class="form-check-input" type="radio" name="applyScore" id="inlineRadio1" value="아주 좋아요">
               <label class="form-check-label" for="inlineRadio1">발림성이 좋아요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="applyScore" id="inlineRadio2" value="보통이에요">
               <label class="form-check-label" for="inlineRadio2">보통이에요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="applyScore" id="inlineRadio3" value="아쉬워요">
               <label class="form-check-label" for="inlineRadio3">발림성이 아쉬워요</label>
           </div><br><br>
           <div class="form-check form-check-inline">
               <strong>자극도 &nbsp;&nbsp;&nbsp; </strong>
               <input class="form-check-input" type="radio" name="stimulationScore" id="inlineRadio1" value="아주 좋아요">
               <label class="form-check-label" for="inlineRadio1">자극없이 순해요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="stimulationScore" id="inlineRadio2" value="보통이에요">
               <label class="form-check-label" for="inlineRadio2">보통이에요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="stimulationScore" id="inlineRadio3" value="아쉬워요">
               <label class="form-check-label" for="inlineRadio3">자극이 느껴져요</label>
           </div><br><br>
           <div class="form-check form-check-inline">
               <strong> 만족도 &nbsp;&nbsp;&nbsp;  </strong>
               <input class="form-check-input" type="radio" name="satisfactionScore" id="inlineRadio1" value="아주 좋아요">
               <label class="form-check-label" for="inlineRadio1">추천하고 싶어요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="satisfactionScore" id="inlineRadio2" value="보통이에요">
               <label class="form-check-label" for="inlineRadio2">보통이에요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="satisfactionScore" id="inlineRadio3" value="아쉬워요">
               <label class="form-check-label" for="inlineRadio3">제품이 아쉬워요</label>
           </div><br><br>
           <div class="textArea">
               <label for="text"><strong>전체적인 후기</strong>
               <textarea class="form-control" name="content" cols="145" rows="5" placeholder="제품에 대한 솔직한 평가를 남겨주세요." id="text"></textarea></label>
           </div>
           <div class="review-btn">
           <input type="hidden" name="cId" value="${sessionId}">
       	   <input type="hidden" name="pdId" value="${pdId}"> 
           <input type="submit" class="write-btn" value="리뷰 작성 완료" onclick="reviewbtn()"/>
           </div>
        </form>
    </div>
</body>
</html>
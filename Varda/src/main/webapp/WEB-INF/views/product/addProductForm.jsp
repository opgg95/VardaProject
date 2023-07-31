<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!--<script type="text/javascript" src="/resources/js/validation.js"></script> 스크립트부분-->
<title>상품 등록</title>
</head>
<!--header부분-->

<body>

   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">상품 등록</h1>
      </div>
   </div>
   <div class="container">
      <form name="newProduct" action="addProductForm" class="form-horizontal" method="post" enctype="multipart/form-data">
         <div class="form-group row">
            <label class="col-sm-2">Product</label>
            <div class="col-sm-3">
               <select name="pdType">
            <option value=1>스킨</option>
            <option value=2>로션</option>
            <option value=3>수분크림</option>
            <option value=4>앰플&세럼</option>
            <option value=5>마스크팩</option>
             <option value=6>미스트</option>
          </select>
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">Men/Women </label>
            <div class="col-sm-3">
              <select name="gender">
            	<option value=1>남성용</option>
                <option value=2>여성용</option>
             </select>  
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">Skin Type</label>
            <div class="col-sm-3">
               <select name="skinType">
              <option value=1>건성</option>
              <option value=2>지성</option>
              <option value=3>복합성</option>
           </select>
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">상품명</label>
            <div class="col-sm-3">
               <input type="text" id="pdName"  name="pdName" class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">가격</label>
            <div class="col-sm-3">
               <input type="text" id="pdPrice"  name="pdPrice" class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">태그</label>
            <div class="col-sm-3">
               <input type="text" id="pdTag"  name="pdTag" class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품이미지</label>
            <div class="col-sm-3">
               <input type="file" name="file1" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품상세설명서</label>
            <div class="col-sm-3">
               <input type="file" name="file2" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10 ">
               <button type="submit" class="btn btn-primary" >등록</button> <!--여기 온클릭부분 무슨 펑션으로 가는거져? js에 없어서 궁금  -->
            </div>
         </div>
      </form>
   </div>
</body>
</html>

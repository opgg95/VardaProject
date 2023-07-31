<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style>
   ul #userinfo {
       background-color: blue;
   }
       table {
       text-align: center;
       margin-top: 100px;
       margin-left : 14%;
       margin-right : 30%;
       padding-left: 100px;
       padding-right: 100px;
   }
   span {
       color: blueviolet;
   }
</style>
<body>
    <!-- 탭 메뉴 -->
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab" data-bs-theme="dark"
				data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
				aria-selected="true">상품상세</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
				data-bs-target="#myreview" type="button" role="tab"
				aria-controls="myreview" aria-selected="false">리뷰</button>
		</li>

	</ul>
	
	<!-- 내용 -->
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
			aria-labelledby="userinfo-tab">제품 상세 설명</div>
		<div class="tab-pane fade" id="myreview" role="tabpanel"
			aria-labelledby="myreview-tab">
			<p>
			<p>
			<table class="table table-borderless">
    <colgroup>
        <col style="width:250px" />
        <col style="width:250px" />
        <col style="width:250px" />
        <col style="width:250px" />
        </colgroup>
            <thead>
        <tbody>
    <colgroup>
        <col style="width:250px" />
        <col style="width:250px" />
        <col style="width:250px" />
        <col style="width:250px" />
        </colgroup>
            <thead>
        <tbody>
          <tr>
             <td scope="col" rowspan="4">heegle</td>
          </tr>
          <tr>
            <td>23년 5월 19일</td>
             <td></td>
             <td></td>
             <td></td>
          </tr>
          <tr>
             <td>[상품명] 피지오겔</td>
             <td colspan="5"></td>
          </tr>
        
          <tr>
            <td><span><B>발림성</B> </span> 아주 좋아요 </td>
            <td><span><B>자극도</B></span> 보통이에요</td>
            <td><span><B>만족도</B></span> 아주 좋아요</td>
            <td colspan="4"></td>
         </tr>
         <tr style="height: 50px;">
         </tr>
         <tr>
            <td style="border-bottom: 1px #D1D1D1 solid;"  colspan="4" rowspan="4">아아아아아아아아아아아아아아</td>
        </tr>
        <tr style="height: 100px;">
        </tr>
        
        </tbody> 
       </table>
      
		</div>
	</div>
	<script>
	    let key = "${param.key}";
	    console.log(key);
	    if(key === "userinfo"){
	        
	        $("#myreview-tab").removeClass("active");
	        $("#wishlist-tab").removeClass("active");
	        $("#userinfo-tab").addClass("active");
	        
	        $("#myreview").removeClass("show active");
	        $("#wishlist").removeClass("show active");
	        $("#userinfo").addClass("show active");
	        
	    }else if(key === "myreview"){
	        
	        $("#wishlist-tab").removeClass("active");
	        $("#userinfo-tab").removeClass("active");
	        $("#myreview-tab").addClass("active");
	        
	        $("#userinfo").removeClass("show active");
	        $("#wishlist").removeClass("show active");
	        $("#myreview").addClass("show active");
	        
	    }else if(key === "wishlist"){
	        
	        $("#userinfo-tab").removeClass("active");
	        $("#myreview-tab").removeClass("active");
	        $("#wishlist-tab").addClass("active");
	        
	        $("#myreview").removeClass("show active");
	        $("#userinfo").removeClass("show active");
	        $("#wishlist").addClass("show active");
	        
	    }
	    </script>
</body>
</html>
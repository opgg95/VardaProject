<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 성공</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        header{
            margin-top: 30px;
            margin-bottom: 90px;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
    </style>
    
</head>
<body>
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="../main/loginMain" class="display-1" >varda</a>
        </nav>
    </header> 

    <div class="container">
        <div class="text-center">
            <h1 class="display-4"><span>${message } 회원님 반갑습니다!</span></h1>
            <img src="/resources/img/joinsuccess.png" class="rounded mx-auto d-block">
            <br><br>
            <a href="../customer/loginConnect">
            <button type="submit" class="btn btn-secondary btn-lg btn-block">Varda 홈페이지 바로가기</button>
            </a>
        </div>
    </div>

    <footer>
        <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
    </footer>


        
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 성공</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        header{
            margin-top: 30px;
            margin-bottom: 90px;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header> 

    <div class="container">
        <div class="text-center">
            <h1 class="display-4"><span>${sessioncName}회원님 반갑습니다!</span></h1> <!-- 추가 수정이 필요 -->
            <img src="/resources/img/joinsuccess.png" class="rounded mx-auto d-block">
            <br><br>
            <a href="../customer/loginLoading">   
            <button type="submit" class="btn btn-secondary btn-lg btn-block">Varda 홈페이지 바로가기</button>
            </a>
        </div>
    </div>

    <footer>
        <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
    </footer>


        
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style_loginform.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  <title>LoginForm</title>
 <style>
 #logo{
    text-align: center;
  }
  #content{
    text-align: center;
    margin: auto;
    margin-top: 30px;
    /*border: 7px solid slateblue;*/
    border: 7px solid none;
    border-radius: 15px;
    width: 360px;
    height: 500px;
    padding: 30px 25px;
    background: padding-box lavenderblush;
  }
  #login_wrap{
    text-align: center;
    border: 3px solid none;
    border-radius: 3px;
    padding: 10px;
  }
  #id_pw_wrap{
    text-align: center;
    /* border: 3px solid #212529; */
    border: 3px solid none;
    background-color: azure;
    border-radius: 3px;
    padding: 15px 3px;
  }
  #input_text{
   color: #222;
   box-sizing: border-box;
   font-weight: 400; 
  }
  #id_input_line{
    border: 3px solid none;
    border-radius: 3px;
    margin: 10px 20px 50px 30px;
    padding: 15px 3px 15px 3px;
  }
  #pw_input_line{
    border: 3px solid none;
    border-radius: 3px;
    margin: 10px 20px 20px 30px;
    padding: 15px 3px 15px 3px;
  }
  #bottom_line{
    padding: 10px;
  }
  #login_button{
    margin: 20px 0 10px 0;
    font-size: 22px;
    width: 240px;
    
  }
 
  #join_button{
    margin: 0px 0 10px 0;
    font-size: 22px;
    width: 240px;
  } 
  </style>
</head>
<body>
  <div id ="wrap">
    <!--header부분-->
    <header class = "loginHeader">
      <div id = "logo">
        <a href = "/main/LoginMain">
          <img src="/resources/img/varda_header.png" alt="메인폼으로" width="300px" height="250px">
        </a>
      </div>
    </header>
   </div>
    <div id="content">
   <form action="../customer/loginForm" id="id_pw_wrap" method="post">
      <div id="login_wrap">
          <div id="id_input_line">
            <span class="icon_id">
              <img src="/resources/img/login_id.png" id="icon" alt="로그인_id" width="15px" height="15px">
            </span>
            <input type="text" id="input_text" name="cId" placeholder="ID" maxlength="30" autofocus required>
          </div>
          <div id="pw_input_line">
            <span class="icon_pw">
              <img src="/resources/img/login_pw.png" id="icon" alt="로그인_pw" width="15px" height="15px">
            </span>
            <input type="password" id="input_text" name="cPwd" placeholder="PASSWORD" maxlength="30" required>
          </div>
      </div>
      <div class="btn-group">
        <input type="submit" class="btn btn-success" id ="login_button" value="Login">
      </div>
      <p th:text="${errorMessage}" style="color: red;"></p>
      <hr>
        <div class="btn-group">
          <div>
          <a href="#">
            <button type="button" class="btn btn-warning" id="join_button"data-bs-toggle="modal" data-bs-target="#exampleModal">
              Join
            </button>
          </a>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Join</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
    </form>
    
              <div class="modal-body">
                회원가입창으로 이동하시겠습니까?
              </div>
              <div class="modal-footer">
                <a href="../customer/join">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">예</button>
                </a>
                <button type="button" class="btn btn-primary"  data-bs-dismiss="modal">아니오</button>
              </div>
            </div>
          </div>
        </div>
      </div>
   </div>
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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style_loginform.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  <title>LoginForm</title>
 <style>
 #logo{
    text-align: center;
  }
  #content{
    text-align: center;
    margin: auto;
    margin-top: 30px;
    border: 7px solid slateblue;
    border-radius: 15px;
    width: 400px;
    height: 500px;
    padding: 30px 25px;
  }
  #login_wrap{
    text-align: center;
    border: 3px solid lavender;
    border-radius: 3px;
    padding: 10px;
  }
  #id_pw_wrap{
    text-align: center;
    border: 3px solid lightblue;
    background-color: azure;
    border-radius: 3px;
    padding: 15px 3px;
  }
  #input_text{
   color: #222;
   box-sizing: border-box;
   font-weight: 400; 
  }
  #id_input_line{
    border: 3px solid #000;
    border-radius: 3px;
    margin: 10px 20px 50px 30px;
    padding: 15px 3px 15px 3px;
  }
  #pw_input_line{
    border: 3px solid #000;
    border-radius: 3px;
    margin: 10px 20px 20px 30px;
    padding: 15px 3px 15px 3px;
  }
  #bottom_line{
    padding: 10px;
  }
  #login_button{
    margin: 20px 0 10px 0;
    font-size: 22px;
    width: 300px;
  }
 
  #join_button{
    margin: 0px 0 10px 0;
    font-size: 22px;
    width: 300px;
  } 
  </style>
</head>
<body>
  <div id ="wrap">
    <!--header부분-->
    <header class = "loginHeader">
      <div id = "logo">
        <a href = "/main/LoginMain">
          <img src="/resources/img/varda_header.png" alt="메인폼으로" width="300px" height="250px">
        </a>
      </div>
    </header>
   </div>
    <div id="content">
	<form action="../customer/loginForm" id="id_pw_wrap" method="post">
      <div id="login_wrap">
          <div id="id_input_line">
            <span class="icon_id">
              <img src="/resources/img/login_id.png" id="icon" alt="로그인_id" width="15px" height="15px">
            </span>
            <input type="text" id="input_text" name="cId" placeholder="ID" maxlength="30" autofocus required>
          </div>
          <div id="pw_input_line">
            <span class="icon_pw">
              <img src="/resources/img/login_pw.png" id="icon" alt="로그인_pw" width="15px" height="15px">
            </span>
            <input type="password" id="input_text" name="cPwd" placeholder="PASSWORD" maxlength="30" required>
          </div>
      </div>
      <div class="btn-group">
        <input type="submit" class="btn btn-success" id ="login_button" value="Login">
      </div>
    </form>
      <hr>
        <div class="btn-group">
          <div>
          <a href="#">
            <button type="button" class="btn btn-warning" id="join_button"data-bs-toggle="modal" data-bs-target="#exampleModal">
              Join
            </button>
          </a>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Join</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                회원가입창으로 이동하시겠습니까?
              </div>
              <div class="modal-footer">
                <a href="../customer/join">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">예</button>
                </a>
                <button type="button" class="btn btn-primary"  data-bs-dismiss="modal">아니오</button>
      		  </div>
      		</div>
    		</div>
  		</div>
		</div>
	</div>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
	<style>
        .login{
            height: auto;
            width: 100%;
            background-image: url(https://downloadwap.com/thumbs2/wallpapers/p2ls/2019/movies/40/9971a07113180017.jpg);
            background-size: cover;
        }
        .header{
            width: 100%;
            height: 100px;
            /* background-color: red; */
        }
        .login-body{
            width: 100%;
            height: 800px;
            box-sizing: border-box;
        }
        .login-body .login-box{
            height: 600px;
            background-color: rgb(30,30,30);
            padding: 50px 100px 20px 100px;
            width: 500px;
            margin: 0 auto;
        }
        .login-body .login-box .login-inbox{
            height: 100%;
        }
        .login-body .login-box .login-inbox .login-img{
            text-align: center;
        }
        .login-body .login-box .login-inbox .login-form{
            margin-top: 30px;
        }
        .login-body .login-box .login-inbox .login-form label{
            color: white;
            margin-bottom: 10px;
        }
        .login-body .login-box .login-inbox .login-form input{
            background-color: gray;
        }
        .login-body .login-box .login-inbox .login-form .form-label{
        	color: white;
        	font-size: 10px;
        }
        label{
        	color: white;
        }
        .footer{
            width: 100%;
            height: 100px;
            /* background-color: red; */
        }
    </style>
</head>
	<body>
		<div class="login">
        <div class="header"></div>
		<div class="login-body">
            <div class="login-box">
				<div class="login-img">
				    <a href="<%=request.getContextPath()%>/">
				        <img src="https://store.akamai.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016" height="80" width="250">
				    </a>
				</div>
				<form action="<%=request.getContextPath()%>/login" class="login-form" method="post">
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="아이디" id="id" name="id" value="${user.id}">
				      <label for=""><span>로그인 후 이용바랍니다.</span></label>
				    </div>				    
				    <div class="form-group">
				      <input type="password" class="form-control" placeholder="비밀번호" id="pw" name="pw" value="${user.pw}">
				    </div>
				    <button type="submit" class="btn btn-dark btn-block">로그인</button>
				</form>				
            </div>
        </div>
		<div class="footer"></div>
    </div>
	</body>
</html>
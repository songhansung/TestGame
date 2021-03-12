<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.id-box .form-control{
		display: inline-block;
	}
	.btn-group-vertical .btn{
		height: 60px;
		border: 1px solid black;
		text-align: left;
		font-size: 20px;
	}
	.btn-group-vertical .btn >i{
		margin-right: 14px;
	}
</style>
</head>
<body>
	<div class="container" style="margin-top:30px">
	  	<div class="row">
		    <div class="col-sm-4">
		      	<h3>My Page</h3>
		      	<div class="btn-group-vertical btn-block">
				  <button type="button" class="btn"><i class="fas fa-address-card"></i>내정보</button>
				  <button type="button" class="btn"><i class="fas fa-cube"></i>구매내역</button>
				  <button type="button" class="btn"><i class="fas fa-won-sign"></i>충전내역</button>
				</div>
		      	<hr class="d-sm-none">
		    	</div>
		    <div class="col-sm-8">
		      	<div class="login-body">
		            <div class="login-box">
						<div class="login-img">
						    <a href="<%=request.getContextPath()%>/">
						        <img src="https://store.akamai.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016" height="80" width="250">
						    </a>
						</div>
						<form action="<%=request.getContextPath()%>/signup" class="login-form" method="post">
						    <div class="input-group mb-3">
							  <input type="text" class="form-control" placeholder="아이디" id="id" name="id" value="${user.id}">
							  <div class="input-group-append">
							    <button class="btn btn-success" type="submit">변경</button>
							  </div>
							</div>
						    <div class="form-group">
						      <input type="text" class="form-control" placeholder="이름" id="name" name="name" value="${user.name}">
						    </div>
						    <div class="form-group">
						      <input type="password" class="form-control" placeholder="비밀번호" id="pw" name="pw" value="${user.pw}">
						    </div>
						    <div class="form-group">
						      <input type="password" class="form-control" placeholder="비밀번호확인" id="pw2" name="pw2" value="">
						    </div>
						    <div class="form-group">
						      <input type="text" class="form-control" placeholder="전화번호" id="phone" name="phone" value="${user.phone}">
						    </div>
						    <div class="form-group">
						      <input type="text" class="form-control" placeholder="이메일" id="email" name="email" value="${user.email}">
						    </div>
						    <button type="submit" class="btn btn-dark btn-block">변경하기</button>
						</form>				
		            </div>
		        </div>
		    </div>
	  	</div>
	</div>
</body>
</html>
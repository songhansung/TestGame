<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<form action="" class="login-form" method="post">
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="아이디" id="id" name="id" value="${user.id}">
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
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="이메일" id="email" name="email" value="${user.money}" readonly="readonly">
				    </div>
				</form>				
            </div>
        </div>
		<div class="footer"></div>
    </div>
</body>
</html>
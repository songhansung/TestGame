<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    .disnone{
        display: none;
    }
    .table{
    	text-align: center;
    }
    .content{
    	text-align: center;
    	font-size: 20px;
    }
</style>
<script src="https://kit.fontawesome.com/3a4fdcd1c5.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container" style="margin-top:30px">
	  	<div class="row">
		    <div class="col-sm-4">
		      	<h3>My Page</h3>
		      	<div class="btn-group-vertical btn-block mypage-btns">
				  <button type="button" class="btn mypage" data-target=".mypage-box1"><i class="fas fa-address-card"></i>내정보</button>
				  <button type="button" class="btn buy" data-target=".mypage-box2"><i class="fas fa-cube"></i>구매내역</button>
				  <button type="button" class="btn charging" data-target=".mypage-box3"><i class="fas fa-won-sign"></i>충전내역</button>
				</div>
		      	<hr class="d-sm-none">
		    	</div>
		    <div class="col-sm-8 mypage-box1 mypage-box">
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
            <div class="col-sm-8 mypage-box2 disnone mypage-box">
                <div class="container">              	    
                    <table class="table">                    
                        <thead>
                        <tr>
                            <th>제품제목</th>
                            <th>제품가격</th>
                            <th>구매날짜</th>
                        </tr>
                        </thead>
                   	<c:forEach items="${buylist}" var="buy"> 
                        <tbody>                         
                        <tr>
                            <td>${buy.title}</td>
                            <td>${buy.price}</td>
                            <td>${buy.registerDate}</td>
                        </tr>
                        </tbody>
                    </c:forEach>
                    </table>                   
                </div>
                <c:if test="${buylist.size() == 0}">                     		                      
                <div class="content">
                	<span>구매내역없음</span>
                </div>
                </c:if>
            </div>
            <div class="col-sm-8 mypage-box3 disnone mypage-box">
                <div class="container">       
                    <table class="table">
                        <thead>
                        <tr>
                            <th>아이디</th>
                            <th>충전금액</th>
                            <th>충전날짜</th>
                        </tr>
                        </thead>
                        <c:forEach items="${amountlist}" var="amount">
                        <tbody>
                        <tr>
                            <td>${amount.id}</td>
                            <td>${amount.point}</td>
                            <td>${amount.registerDate}</td>
                        </tr>
                        </tbody>
                        </c:forEach>                       
                    </table>
                </div>
                <c:if test="${amountlist.size() == 0}">                     		                      
                <div class="content">
                	<span>충전내역없음</span>
                </div>
                </c:if>
            </div>
	  	</div>
	</div>
</body>
<script>
    $(function() {
        $('.mypage-btns>button').click(function() {
			$('.mypage-box').addClass('disnone')
			var target = $(this).attr('data-target');
			$(target).removeClass('disnone')
        })
    })
</script>
</html>
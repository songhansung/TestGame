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
		text-align: left;
		font-size: 20px;
		border-top: 1px solid rgb(235,235,235);
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
    .mypage-img{
    	text-align: center;
    }
    .mybox{
    	padding-left: 10px;
    	padding-right: 10px;
    	border: 1px solid rgb(235,235,235);
    }
    body{
    	background-color: rgb(248,248,248);
    }
    .container{
    	height: 1100px;    	
    }
    .laft-box{
    	background-color: white;
    	border: 1px solid rgb(235,235,235);
    }
    .mypage-body{
    	background-color: white;
    }
    .id-box{
    	margin-top: 40px;
    }
    .pw-box{
    	margin-top: 40px;
    }
    .pw-mainbox{
    	margin-top: 30px;
    }
    .pw-mainbox .btn-outline-success{
    	float: right;
    }
    .pw-sub{
    	float: left;
    }
    .pw-sub1{
    	float: right;
    }
    .pw2-box{
    	margin-top: 50px;
    }
    .laft-box>h3{
    	text-align: center;
    	margin-top: 20px;
    	margin-bottom: 20px;
    }
    .pw-btnbox{
    	margin-top: 30px;
    }
    .pw-btnbox>button{
    	height: 50px;
    }
</style>
<script src="https://kit.fontawesome.com/3a4fdcd1c5.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container" style="margin-top:30px">
	  	<div class="row">
		    <div class="col-sm-4">
		    	<div class="laft-box">
		      	<h3>My Page</h3>
		      	<div class="btn-group-vertical btn-block mypage-btns">
				  <button type="button" class="btn mypage" data-target=".mypage-box1"><i class="fas fa-address-card"></i>내정보</button>
				  <button type="button" class="btn buy" data-target=".mypage-box2"><i class="fas fa-cube"></i>구매내역</button>
				  <button type="button" class="btn charging" data-target=".mypage-box3"><i class="fas fa-won-sign"></i>충전내역</button>
				</div>
		      	<hr class="d-sm-none">
		    	</div>
		    </div>
		    <div class="col-sm-8 mypage-box1 mypage-box">
		      	<div class="mypage-body">
		            <div class="mybox">
						<div class="mypage-img">
						    <a href="<%=request.getContextPath()%>/">
						        <img src="https://store.akamai.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016" height="80" width="250">
						    </a>
						</div>
						<div class="title-box">
							<h3>일반 설정</h3>
							<span>이름, 연락처 정보 등 에픽게임즈에 공유된 계정 정보를 확인하고 관리할 수 있습니다.</span>
						</div>
						<div class="id-box">
							<H3>계정 정보</H3>
							<span>ID : ${user.id}</span>
						</div>
						<div class="pw-box">
							<h3>비밀번호 변경</h3>
							<span>보안을 위해 비밀번호는 다른 온라인 계정에서 사용하지 않는 고유한 것을 사용하길 권장합니다</span>
							<form action="<%=request.getContextPath()%>/user/modify" class="pw-form" method="post">
							<input type="hidden" class="form-control" id="id" name="id" value="${user.id}">
							<input type="hidden" class="form-control" id="money" name="money" value="${user.money}">
							<input type="hidden" class="form-control" id="email" name="email" value="${user.email}">
							<input type="hidden" class="form-control" id="phone" name="phone" value="${user.phone}">
							<div class="pw-mainbox row">
								<div class="col-md-6">
									<div>
									<h6>새 비밀번호</h6>
									<input type="password" class="form-control input-password" placeholder="비밀번호" id="pw" name="pw">
									</div>
									<div class="pw2-box">
									<h6>새 비밀번호 재입력</h6>
									<input type="password" class="form-control input-password" placeholder="비밀번호확인" id="pw2" name="pw2">
									</div>
									<div class="pw-btnbox">
									<button class="btn btn-outline-secondary col-5" onclick="clearInput()" type="button">지우기</button>
									<button type="submit" class="btn btn-outline-success col-5">변경</button>
									</div>
								</div>
								<div class="col-md-6">
									<h6>귀하의 비밀번호</h6>
									<p>비밀번호에는 공백이 없어야 합니다.</p>
									<p>비밀번호는 7자 이상 입력해야 합니다.</p>
								</div>
							</div>
							</form>
						</div>
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
	function clearInput(){
	
		var el = document.getElementsByClassName('input-password');
	
		for(var i=0; i<el.length; i++){
			el[i].value = '';
			}
		}
    $(function() {
        $('.mypage-btns>button').click(function() {
			$('.mypage-box').addClass('disnone')
			var target = $(this).attr('data-target');
			$(target).removeClass('disnone')
        })
        $('.pw-form').submit(function() {
			var pw = $('input[name=pw]').val();
			var pw2 = $('input[name=pw2]').val();
			if(pw == ''){
				alert('비밀번호를 입력하세요');
				return false;
			}
			if(pw != pw2){
				alert('비밀번호가 일치하지 않습니다');
				return false;
			}
			alert('비밀번호 변경이되었습니다 다시 로그인하세요')
		})		
    })

    
</script>
</html>
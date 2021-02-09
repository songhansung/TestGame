<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<style>
        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        .header-bar{
            width: 100%;
            height: 80px;
            box-sizing: border-box;
            background-color: black;
            display: flex;
        }
        .header-inbar{
            width: 1500px;
            margin: 0 auto;
            display: flex;
        }
        .header-bar .header-left{
            width: 20%;
            height: 100%;
            flex: 1;
        }
		.header-bar .header-left .logo{
            text-align: center;
        }
        .header-bar .header-center{
            width: 50%;
            /* background-color: saddlebrown; */
            height: 100%;
            flex: 3;
            box-sizing: border-box;
            position: relative;
        }
        .header-bar .header-center .box{
            text-align: center;
            float: left;
            height: 100%;
            box-sizing: border-box;
            margin-left: 15px;
            margin-right: 15px;
        }
        .header-bar .header-center .box a{
            line-height: 80px;
        }
        .header-bar .header-right{
            /* background-color: blue; */
            height: 100%;
            flex: 2;
            padding-top: 20px;
            padding-bottom: 20px;
            box-sizing: border-box;
        }
        .header-bar .header-right .box{
            height: 100%;
            float:right;
        }
        .header-bar .header-right .box.login{
            box-sizing: border-box;
            line-height: 40px;
            margin-left: 20px;
            margin-right: 40px;
            font-weight: bold;
        }
        .header-bar .header-right .box.link-join{
            background-color: rgb(11,196,226);
            box-sizing: border-box;
            padding: 10px 35px 10px 35px;
            height: 100%;
            line-height: 20px;
            margin-right: 10px;
            border-radius: 3px;
            font-weight: bold;
        }
        .header-bar .header-right .box.link-join>a{
            padding-left: 10px;
            padding-right: 10px;
            display: block;
            text-align: center;
            height: 100%;
        }
        .header-bar .header-right .login-box{
            float: right;
            height: 100%;
        }
        .header-bar .header-right .login-box .login-inbox{
            width: 100px;
            line-height: 20px;
            height: 100%;
            text-align: right;
            float: left;
            color:white;
        }
        .header-bar .header-right .login-box .login-inbox .login-box-id{
            position: relative;
        }
        .header-bar .header-right .login-box .login-inbox .login-box-id>i{
            margin-left: 20px;
        }
        .header-bar .header-right .login-minibox{
            width: 120px;
            height: 200px;
            position: absolute;
            background-color:rgb(26,23,33);
            top: 23px;
            left: -20px;
            text-align: center;
            font-weight: bold;
            display: none;
            z-index:3;
            
        }
        .header-bar .header-right .login-minibox>a{
            display: block;
            line-height: 40px;
        }
        .header-bar .header-right .login-box .login-inbox .login-box-id .login-id-btn{
            background-color: black;
            border: none;
            color:white;
            outline:0;
        }
        .header-bar .header-right .login-box .login-box-img{
            width: 50px;
            height: 100%;
            display: inline;
            border: 1px solid white;
            margin-left: 20px;
            float: right;
            margin-right: 50px;
        }
    </style>
</head>
<body>
	 <div class="header-bar">
	 	<div class="header-inbar">
	        <div class="header-left">
	            <div class="logo">
	                <a href="<%=request.getContextPath()%>/">
	                    <img src="https://store.akamai.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016" height="80" width="120">
	                </a>
	            </div>
	        </div>
	        <div class="header-center">
	            <div class="box customer">
	                <a href="#">상점</a>
	            </div>
	            <div class="box customer">
	                <a href="#">고객센터</a>
	            </div>
	            <div class="box customer">
	                <a href="#">고객센터</a>
	            </div>
	            <%-- <c:if test="${user.rating == 10}"> --%>
		            <div class="box customer">
		                <a href="<%=request.getContextPath()%>/game/game">제품목록</a>
		            </div>
	            <%-- </c:if> --%>
	        </div>
	        <div class="header-right">
	        	<c:if test="${user == null}">   
		            <div class="box link-join">
		                <a href="<%=request.getContextPath()%>/signup">
		                    <span>회원가입</span>
		                </a>
		            </div>                
					<div class="box login">
						<a href="<%=request.getContextPath()%>/login">
							<span>로그인</span>
						</a>
					</div>
	            </c:if>
	            <c:if test="${user != null}">
		            <div class="login-box">
		                <div class="login-inbox">
		                    <div class="login-box-id">
		                    	<button class="login-id-btn">
		                        <span>${user.id}</span><i class="fas fa-angle-down"></i>
		                        </button>
		                        <div class="login-minibox">
		                            <a href="#">마이페이지</a>
		                            <a href="<%=request.getContextPath()%>/basket">장바구니</a>
		                            <a href="#">마이페이지</a>
		                            <a href="<%=request.getContextPath()%>/signout">로그아웃</a>	                           
		                        </div>
		                    </div>
		                    <div class="login-box-money">
		                        <span>${user.money}원</span>
		                    </div>
		                </div>
		                <div class="login-box-img">
		                    <a href="">3252</a>
		                </div>
		            </div>
	            </c:if>
	            <div class="mybox"></div>           
	        </div>
        </div>
    </div>
    <script>
        $(function(){
            $('.login-id-btn').click(function(){
                $('.login-minibox').toggle();
            })
        })
    </script>
</body>
</html>
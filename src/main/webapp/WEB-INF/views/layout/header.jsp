<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            color: white;
            font-size: 12px;
        }
        .header-bar{
            width: 100%;
            height: 80px;
            box-sizing: border-box;
            background-color: black;
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
            flex: 1.5;
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
            margin-right: 20px;
        }
        .header-bar .header-right .box.link-join{
            background-color: rgb(11,196,226);
            box-sizing: border-box;
            padding: 10px;
            height: 100%;
            line-height: 20px;
            margin-right: 10px;
            border-radius: 3px;
        }
        .header-bar .header-right .box.link-join>a{
            padding-left: 10px;
            padding-right: 10px;
            display: block;
            text-align: center;
            height: 100%;
        }
    </style>
</head>
<body>
	 <div class="header-bar">
        <div class="header-left">
            <div class="logo">
                <a href="">
                    <img src="https://store.akamai.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016" height="80" width="120">
                </a>
            </div>
        </div>
        <div class="header-center">
            <div class="box customer">
                <a href="#">고객센터</a>
            </div>
            <div class="box customer">
                <a href="#">고객센터</a>
            </div>
            <div class="box customer">
                <a href="#">고객센터</a>
            </div>
        </div>
        <div class="header-right">  
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
        </div>
    </div>
</body>
</html>
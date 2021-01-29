<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<style>
        .main-body{
            background-color: rgb(60,60,60);
            width: 100%;
            height:  100%;
        }
        .main-body-home{
            width: 1500px;
            height: 100%;
            border: 1px solid yellow;
            margin: 0 auto;
        }
        .main-body-home .main-searchbar{
            width: 100%;
            height: 100px;
            background-color: violet;
        }
        .main-body-home .main-items{
            height: 400px;
            width: 100%;
            background-color: tomato;
            padding-left: 50px;
            padding-right: 50px;
            box-sizing: border-box;
        }
        .main-body-home .main-items .items-box{
            width: 70%;
            height: 100%;
            background-color: teal;
            float: left;
            padding-left: 50px;
            padding-right: 50px;
            box-sizing: border-box;
            position: relative;
        }
        .main-body-home .main-items .items-box .left-icon{
            position: absolute;
            left: 0;
            top: 150px;
            height: 80px;
            width: 50px;
            background: linear-gradient(to left, rgba(60,60,60,0.5),rgba(0,0,0,0.5));
            text-align: center;
        }
        .main-body-home .main-items .items-box .right-icon{
            position: absolute;
            left: 929px;
            top: 150px;
            height: 80px;
            width: 50px;
            background: linear-gradient(to right, rgba(60,60,60,0.5), rgba(0,0,0,0.5));
            text-align: center;
        }
        .main-body-home .main-items .items-box .left-icon>i,.right-icon>i{
            font-size: 50px;
            margin-top: 14px;
            color: white;
        }
        .main-body-home .main-items .items-box .items-mainimg{
            background-color: wheat;
            width: 100%;
            height: 100%;
        }
        .main-body-home .main-items .items-subbox{
            width: 30%;
            height: 100%;
            background-color: thistle;
            float: right;
        }
        .main-body-home .main-items .items-subbox .items-subimg{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
            width: 100%;
            list-style: none;
        }
        .main-body-home .main-items .items-subbox .items-subimg li{
            box-sizing: border-box;
            height: 200px;
            width: 50%;
            float: left;
        }
    </style>
</head>
<body>
	<div class="main-body">
		<div class="main-body-home">
            <div class="main-searchbar"></div>
            <div class="main-items">
                <div class="items-box">
                    <div class="left-icon"><i class="fas fa-chevron-left"></i></div>
                    <div class="right-icon"><i class="fas fa-chevron-right"></i></div>
                    <a href="#">
                        <div class="items-mainimg">
                            
                        </div>
                    </a>
                </div>
                <div class="items-subbox">
                    <ul class="items-subimg">
                        <li><div>234</div></li>
                        <li><div>34</div></li>
                        <li><div>34</div></li>
                        <li><div>34</div></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

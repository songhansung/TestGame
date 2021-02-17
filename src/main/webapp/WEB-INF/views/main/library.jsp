<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .main-body{      	
            background-color: rgb(60,60,60);
            width: 100%;
        }
        .main-content{
            width: 1000px;
            color: white;
            margin: 0 auto;
        }
        .main-content .game-list-row-box{
            position: relative;
            
        }
        .main-content .game-list-row-box .game-list-row{
            width: 900px;
            height: 120px;
            border: 1px solid black;
            margin: 0 auto;
            padding: 10px;
            box-sizing: border-box;
            display: flex;
        }
        .main-content .game-list-row-box .game-list-row .img-box{
            height: 100%;
            width: 300px;
        }
        .main-content .game-list-row-box .game-list-row .sub-box{
            background-color: black;
            width: 600px;
            height: 100%;
            line-height: 49px;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <div class="main-body">
		<div class="main-content">
            <div class="game-list-row-box">
            	<c:forEach items="${buyList}" var="buy" >           		
	                <div class="game-list-row">	                	
	                    <div class="img-box">              
	                        <img src="<%=request.getContextPath()%>/resources/img/${buy.filename}" style="height: 100%;width: 100%;">
	                    </div>	                    
	                    <div class="sub-box">
	                        <div class="title-box">${buy.title}</div>
	                        <div class="review-box">나중에리뷰링크</div>
	                    </div>	                    
	                </div>
            	</c:forEach>                
            </div>
        </div>
    </div>
</body>
</html>
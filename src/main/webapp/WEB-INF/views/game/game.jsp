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
        .gamelist{
            width: 1000px;
            color: white;
            margin: 0 auto;
			
        }
        .gamelist-table{
            margin-top: 30px;
            width: 100%;
            text-align: center;
            margin-left: 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
	<div class="main-body">
		<div class="gamelist">
			<a href="<%=request.getContextPath()%>/game/register">
            <button type="button" class="btn btn-primary btn-block">제품등록</button>
            </a>
            <table class="gamelist-table">
                <tr>
                    <th>제품번호</th>
                    <th>메인이미지</th>
                    <th>제목</th>
                    <th>출시일자</th>
                    <th>개발사</th>
                </tr>
               <c:forEach items="${list}" var="game">
	                <tr class="" align="center" onClick="location.href='<%=request.getContextPath()%>/game/detail?num=${game.gameNum}'" style="cursor:pointer;"> 
	                    <td>${game.gameNum}</td>
	                    <td><img src="https://cdn.akamai.steamstatic.com/steam/apps/578080/capsule_sm_120.jpg?t=1608093288" alt=""></td>
	                    <td>${game.title}</td>
	                    <td>${game.launch}</td>
	                    <td>${game.company}</td>
	                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
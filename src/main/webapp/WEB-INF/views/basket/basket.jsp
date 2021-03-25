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
            height: 1000px;
        }
        .basket{
            width: 1000px;
            color: white;
            margin: 0 auto;
			
        }
        .basket-table{       
            width: 100%;
            text-align: center;
            margin-left: 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="main-body">
		<div class="basket">
            <table class="basket-table">
                <tr>
                    <th>메인이미지</th>
                    <th>제목</th>
                    <th>가격</th>
                    <th>개발사</th>
                </tr>
                <c:forEach items="${bList}" var="game"> 
                	<c:if test="${game.isdel != 'Y'}">           		
                    <tr class="" align="center" onClick="location.href='<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}'" style="cursor:pointer;"> 
                        <td>                        
                            <img src="<%=request.getContextPath()%>/resources/img/${game.filename}" style="width: 200px; height: 100px;">                 
                        </td>
                        <td>${game.title}</td>
                        <td>${game.price}</td>
                        <td>${game.company}</td>
                    </tr>
                    </c:if>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
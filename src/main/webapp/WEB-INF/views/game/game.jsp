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
            <div class="input-group mb-3">
                <select class="form-control col-3" name="type">
                    <option value="1" <c:if test="${pm.criteria.type == 1}">selected</c:if>>제목</option>
                    <option value="2" <c:if test="${pm.criteria.type == 2}">selected</c:if>>내용</option>
                    <option value="3" <c:if test="${pm.criteria.type == 3}">selected</c:if>>개발사</option>
                </select>
                <input type="text" class="form-control" placeholder="Search">
                <div class="input-group-append">
                  <button class="btn btn-success" type="submit">검색</button>
                </div>
            </div>
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
	                <tr class="" align="center" onClick="location.href='<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}'" style="cursor:pointer;"> 
	                    <td>${game.gameNum}</td>
	                    <td><img src="" alt=""></td>
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
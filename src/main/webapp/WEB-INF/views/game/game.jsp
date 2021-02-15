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
			<form action="<%=request.getContextPath()%>/game/game" method="get">
            <div class="input-group mb-3">
                <select class="form-control col-3" name="type">
                    <option value="1" <c:if test="${pm.criteria.type == 1}">selected</c:if>>제목</option>
                    <option value="2" <c:if test="${pm.criteria.type == 2}">selected</c:if>>내용</option>
                    <option value="3" <c:if test="${pm.criteria.type == 3}">selected</c:if>>개발사</option>
                </select>
                <input type="text" class="form-control" placeholder="Search" name="search" value="${pm.criteria.search}" >
                <div class="input-group-append">
                  <button class="btn btn-success" type="submit">검색</button>
                </div>
            </div>
            </form>
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
	                    <td>
	                    	<c:forEach items="${imglist}" var="img">                
	                    		<c:if test="${img.isimg eq 'M' && img.gameNum == game.gameNum && img.isdel eq 'N'}">
	                    			<img src="<%=request.getContextPath()%>/resources/img/${img.filename}" style="width: 200px; height: 100px;">
	                    		</c:if>
	                    	 </c:forEach>
	                    </td>
	                    <td>${game.title}</td>
	                    <td>${game.launch}</td>
	                    <td>${game.company}</td>
	                </tr>
                </c:forEach>
            </table>
            <ul class="pagination justify-content-center">
			  	<c:if test="${pm.prev}">
			    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/game/game?page=${pm.startPage-1}&type=${pm.criteria.type}&search=${pm.criteria.search}">이전</a></li>
			    </c:if>
			    <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
			    	<li class="page-item <c:if test="${index == pm.criteria.page}">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/game/game?page=${index}&type=${pm.criteria.type}&search=${pm.criteria.search}">${index}</a></li>
			    </c:forEach>
			    <c:if test="${pm.next}">
			    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/game/game?page=${pm.endPage+1}&type=${pm.criteria.type}&search=${pm.criteria.search}">다음</a></li>
			    </c:if>
		  	</ul>
        </div>
    </div>
    <script type="text/javascript">
    	
    </script>
</body>
</html>
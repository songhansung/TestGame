<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		.main-body{      	
            background-color: rgb(60,60,60);
            width: 100%;
            height: 100%;
        }
        .customerlist{
            width: 1000px;
            color: white;
            margin: 0 auto;
            padding-top: 20px;
			
        }
        .customer-table{
            margin-top: 30px;
            margin-bottom: 30px;
            width: 100%;
            border-collapse: collapse;			
        }
        .table-title{
        	text-align: center;
        }
</style>
</head>
<body>
	<div class="main-body">		
		<div class="customerlist">		           	                                 
            <table class="table table-dark table-striped">
                <tr class="table-title">
                    <th>접수번호</th>
                    <th>서비스분류</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>답변여부</th>
                </tr>
               <c:forEach items="${list}" var="cus">
	                <tr class="gamelist-items" align="center" onClick="location.href='<%=request.getContextPath()%>/customerObj?cusNum=${cus.cusNum}'" style="cursor:pointer;"> 
	                    <td>${cus.cusNum}</td>
	                    <td>${cus.kind}</td>
	                    <td>${cus.title}</td>
	                    <td>${cus.registerDate}</td>
	                    <td>${cus.processing}</td>    
	                </tr>
                </c:forEach>
            </table>
          	<ul class="pagination justify-content-center">
			  	<c:if test="${pm.prev}">
			    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/cuslistUser?page=${pm.startPage-1}&type=${pm.criteria.type}&search=${pm.criteria.search}">이전</a></li>
			    </c:if>
			    <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
			    	<li class="page-item <c:if test="${index == pm.criteria.page}">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/cuslistUser?page=${index}&type=${pm.criteria.type}&search=${pm.criteria.search}">${index}</a></li>
			    </c:forEach>
			    <c:if test="${pm.next}">
			    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/cuslistUser?page=${pm.endPage+1}&type=${pm.criteria.type}&search=${pm.criteria.search}">다음</a></li>
			    </c:if>
		  	</ul>
        </div>
    </div>
</body>
</html>
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
	.section-center{
		padding-top: 20px;
	}
	.cs_list{
		width:100%;
        display: flex;
        margin-bottom: 0;
	}
	.cs_title{
		margin-bottom: 20px;
	}
	.cs_list{
		padding-bottom: 20px;
	}
    .cs_list >li{
        list-style: none;
        margin: 0 auto;
        width: 390px;
        height: 290px;
        background-color: rgb(18,18,18);
    }
    .cs_list >li .h2,.h3{
        text-align: center;
        font-size: 20px;
        font-weight: bold;
        margin-top :30px;
    }
    .cs_list >li a{
        width: 180px;
        height: 80px;
        margin: 0 auto;
        display: block;
        text-align: center;
        color: white;
        text-decoration: none;
        border: 1px solid white;
        font-size: 20px;
        font-weight: bold;
        line-height: 79px;
        margin-top: 60px;
    }
</style>
</head>
<body>
	<div class="main-body">
		<div class="main-content">
			<c:if test="${user == null || user.rating == 1}">
			<div class="section-center">
				<div class="cs_title"><h1>고객센터</h1></div>               
		        <ul class="cs_list">
		            <li>
		                <h2 class="h2">FAQ/문의</h2>
                        <h3 class="h3">1:1문의를 접수할 수 있습니다.</h3>
                        <a href="<%=request.getContextPath()%>/customerUser" id="cusbtn">
                        	<span>문의하기</span>
                        </a>
		            </li>
		            <li>
                        <h2 class="h2">문의내역</h2>
                        <h3 class="h3">자신이 문의했던 내역을 볼수있습니다.</h3>
                        <a href="<%=request.getContextPath()%>/cuslistUser" id="listbtn">
                        	<span>문의내역보기</span>
                        </a>
		            </li>
		        </ul>
	    	</div>
	    	</c:if>
	    	<c:if test="${user.rating == 10}">
	    	<div class="section-center">
                <h1>고객센터</h1>
		        <ul class="cs_list">	          
		            <li>
                        <h2 class="h2">유저문의내역</h2>
                        <h3 class="h3">유저들이 문의한 내역을 볼수있습니다.</h3>
                        <a href="<%=request.getContextPath()%>/cuslistObj"><span>문의내역보기</span></a>
		            </li>
		        </ul>
	    	</div>
	    	</c:if>
    	</div>		
	</div>
</body>
<script type="text/javascript">
	$(function() {
		var id = '${user.id}';
		$('#listbtn').click(function (e) {			
			if(id == ''){
				alert('로그인하세요');
				e.preventDefault();
			}
		})
		$('#cusbtn').click(function (e) {			
			if(id == ''){
				alert('로그인하세요');
				e.preventDefault();
			}
		})
	});
</script>
</html>
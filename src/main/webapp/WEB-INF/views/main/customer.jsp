<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.cs_list{
		width:100%;
        display: flex;
        margin-bottom: 0;
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
			<div class="section-center">
                <h1>고객센터</h1>
		        <ul class="cs_list">
		            <li>
		                <h2 class="h2">FAQ/문의</h2>
                        <h3 class="h3">1:1문의를 접수할 수 있습니다.</h3>
                        <a href="#"><span>문의하기</span></a>
		            </li>
		            <li>
                        <h2 class="h2">문의내역</h2>
                        <h3 class="h3">자신이 문의했던 내역을 볼수있습니다.</h3>
                        <a href="#"><span>문의내역보기</span></a>
		            </li>
		        </ul>
	    	</div>
    	</div>		
	</div>
</body>
</html>
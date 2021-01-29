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
            height:  500px;
        }
        .gamelist{
            width: 1000px;
            height: 300px;
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
			<a href="<%=request.getContextPath()%>/register">
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
                <tr class="" align="center" onClick="location.href='#'" style="cursor:pointer;"> 
                    <td>1</td>
                    <td><img src="https://cdn.akamai.steamstatic.com/steam/apps/578080/capsule_sm_120.jpg?t=1608093288" alt=""></td>
                    <td>배틀그라운드</td>
                    <td>2017-02-07</td>
                    <td>블루홀</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
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
                    <th>제품번호</th>
                    <th>메인이미지</th>
                    <th>제목</th>
                    <th>가격</th>
                    <th>개발사</th>
                </tr>
                    <tr class="" align="center" onClick="location.href='<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}'" style="cursor:pointer;"> 
                        <td>${bList}</td>
                        <td>                        
                            <img src="#" style="width: 200px; height: 100px;">                 
                        </td>
                        <td>${game.title}</td>
                        <td>50000</td>
                        <td>${game.company}</td>
                    </tr>
            </table>
        </div>
    </div>
</body>
</html>
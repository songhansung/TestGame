<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
    <table class="gamelist-table">
        <tr>
            <th>제품번호</th>
            <th>메인이미지</th>
            <th>제목</th>
            <th>가격</th>
            <th>개발사</th>
        </tr>
            <tr class="" align="center" onClick="location.href='<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}'" style="cursor:pointer;"> 
                <td>${game.gameNum}</td>
                <td>                        
                    <img src="#" style="width: 200px; height: 100px;">                 
                </td>
                <td>${game.title}</td>
                <td>50000</td>
                <td>${game.company}</td>
            </tr>
    </table>
</body>
</html>
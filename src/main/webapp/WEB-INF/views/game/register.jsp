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
        .register-form{
        	width: 1000px;
            height: 100%;
            margin: 0 auto;
        }
    </style>	
</head>
<body>
	<div class="main-body">
		<form action="<%=request.getContextPath()%>/game/register" class="register-form" method="post" enctype="multipart/form-data">
			<div class="form-group">
		    	<label>제목</label>
		    	<input type="text" class="form-control" name="title">
		    </div>
		    <div class="form-group">
                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control" id="price" placeholder="가격" name="price">
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" placeholder="출시일자" id="launch" name="launch">
                    </div>
                    <div class="input-group-append col">
                        <select class="form-control" id="company" name="company">
                            <option value="1">개발사</option>
                            <option value="2">블루홀</option>
                            <option value="3">라이엇</option>
                            <option value="4">NC소프트</option>
                        </select>
                  	</div>
                </div>
		    </div>
		    <div class="form-group">
		    	<label>태그</label>
		    	<input type="text" class="form-control" id="tags" name="tags">
		    </div>
		    <div class="form-group">
		    	<label>내용</label>
		    	<textarea rows="10" class="form-control" name="content"></textarea>
		  	</div>
		  	<div class="form-group">
		    	<label>첨부파일</label>
		    	<input type="file" class="form-control" name="filelist">
		    	<input type="file" class="form-control" name="filelist">
		    	<input type="file" class="form-control" name="filelist">
		    </div>
		  	<button type="submit" class="btn btn-warning">등록</button>
		</form>
    </div>
</body>
</html>
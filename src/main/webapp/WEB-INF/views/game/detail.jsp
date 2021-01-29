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
        .detail-form{
        	width: 1000px;
            height: 300px;
            color: white;
            margin: 0 auto;
        }
    </style>	
</head>
<body>
	<div class="main-body">
		<form action="" class="detail-form">
			<div class="form-group">
		    	<label>제목</label>
		    	<input type="text" class="form-control" name="title">
		    </div>
		    <div class="form-group">
		    	<label>작성자</label>
		    	<input type="text" class="form-control" name="writer" value="${user.id}" readonly>
		    </div>
		    <div class="form-group">
		    	<label>내용</label>
		    	<textarea rows="10" class="form-control" name="content"></textarea>
		  	</div>
		  	<button type="submit" class="btn btn-warning">등록</button>
		</form>
    </div>
</body>
</html>
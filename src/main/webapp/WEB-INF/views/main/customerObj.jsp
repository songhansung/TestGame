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
        height: 100%;
	}
	.coustomerbody{
		width: 1000px;
		height: 100%;
        margin: 0 auto;
	}
    .customer_title{
        width: 100%;
        height: 100px;
        padding-top: 20px;
        color: white;
    }    
    .tit_article{
        float: left;
        font-size: 34px;
        font-weight: bold;
    }
    .list_dot{
        float: left;
        display: block;
        margin-left: 25px;
    }
    .form-group label{
    	color: white;
    }
    .input-group-append > label{
    	width: 150px;
    }
</style>
</head>
<body>
<div class="main-body">
		<form action="<%=request.getContextPath()%>/customerObj" class="register-form" method="post" enctype="multipart/form-data">
		<div class="coustomerbody">
			<input type="hidden" class="form-control" name="id" value="${user.id}">
			<input type="hidden" class="form-control" name="cusNum" value="${cus.cusNum}">
			<div class="customer_title">
				<span class="tit_article">문의하기</span>
				<ul class="list_dot">
					<li>(필수) 항목은 반드시 입력해주셔야 문의 접수가 가능합니다.</li>
					<li>적어주신 정보는 문의처리를 위한 용도로만 이용됩니다.</li>
				</ul>
			</div>
			<div class="form-group">
				<label>제목(필수)</label>
				<input type="text" class="form-control" name="title" value="${cus.title}" readonly>
			</div>
			<div class="form-group">
				<div class="row">                   
					<div class="input-group-append col-6">
						<label>문의분류(필수)</label>
						<select class="form-control" id="kind" name="kind">                            
							<option value="${cus.kind}">${cus.kind}</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
			 	<label>문의 내용(필수)</label>
			 	<textarea rows="12" class="form-control" name="content" readonly>${cus.content}</textarea>
			</div>
			<div class="form-group">
			 	<label>답변 내용(필수)</label>
			 	<textarea rows="12" class="form-control" name="objcontent"></textarea>
			</div>
			<button type="submit" class="btn btn-warning">등록</button>
		</div>
		</form>
	</div>
</body>
</html>
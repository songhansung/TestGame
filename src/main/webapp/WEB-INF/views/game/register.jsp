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
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>	
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
                        <input type="text" class="form-control" placeholder="출시일자(ex:20xx-xx-xx	)" id="launch" name="launch">
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
		    	<label>서브내용</label>
		    	<textarea rows="3" class="form-control" name="content"></textarea>
		  	</div>
		  	<div class="form-group" style="display:none;">
		    	<label>메인내용</label>
		    	<textarea rows="10" class="form-control" name="longcontent"></textarea>
		  	</div>
		  	<div id="summernote"></div>
		  	<div class="form-group">
		    			    	
				<div class="row">
			        <div class="col-lg-12">
			            <div class="card shadow mb-4">
			                <div class="card-header py-3">
			                    <h4 class="m-0 font-weight-bold text-primary">이미지업로드</h4>
			                </div>
			                <div class="card-body">
			                
			                    <div class="form-group uploadDiv">
			                    	<label>메인이미지:</label>
			                        <input type="file" name="Mfilelist" multiple accept=".gif, .jpg, .png">
			                        
		    						<label>서브이미지:</label>
			                        <input type="file" name="filelist" class="sub" multiple accept=".gif, .jpg, .png">
			                    </div>
			                
			                    <div class="uploadResult">
			                        <ul></ul>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
		    </div>
		  	<button type="submit" class="btn btn-warning">등록</button>
		</form>
    </div>
    <script>
    $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 300
      });
      $('form').submit(function(){
    	  var code = $('#summernote').summernote('code');
    	  $('textarea[name=longcontent]').val(code);
      })
	
	subInputInsert($("input[type='file'].sub"))
    function subInputInsert(obj){
    	obj.change(function(e){
        	var count = 0;
        	$("input[type='file'].sub").each(function(){
        		if($(this).val() == '')
        			count++;
        	})	
    		if($(this).val() == '' && count == 2){
    			$(this).remove();
    			return;
    		}
        	if($(this).val() != '' && count == 0){
    			$('.form-group.uploadDiv').append('<input type="file" name="filelist" class="sub" multiple accept=".gif, .jpg, .png">');
    			subInputInsert($("input[type='file'].sub").last())			
    			return;
    		}
    	});	
    }
   
	</script>
</body>
</html>
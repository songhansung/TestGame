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
        .uploadResult{
        	display: flex;
        }
        .mainimg-box{
        	flex: 1;
        }
        .subimg-box{
        	flex: 1;
        }
    </style>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
	<div class="main-body">
		<form action="<%=request.getContextPath()%>/game/modify" class="register-form" method="post" enctype="multipart/form-data">
			<input type="hidden" name="gameNum" value="${game.gameNum}">
			<div class="form-group">
		    	<label>제목</label>
		    	<input type="text" class="form-control" name="title" value="${game.title}">
		    </div>
		    <div class="form-group">
                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control" id="price" placeholder="가격" name="price" value="${game.price}">
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" placeholder="출시일자" id="launch" name="launch" value="${game.launch}">
                    </div>
                    <div class="input-group-append col">
                        <select class="form-control" id="company" name="company">
                            <option value="1">개발사</option>
                            <option value="블루홀">블루홀</option>
                            <option value="라이엇">라이엇</option>
                            <option value="NC소프트">NC소프트</option>
                        </select>
                  	</div>
                </div>
		    </div>
		    <div class="form-group">
		    	<label>태그</label>
		    	<input type="text" class="form-control" id="tags" name="tags" value="${game.tags}">
		    </div>
		    <div class="form-group">
		    	<label>서브내용</label>
		    	<textarea rows="3" class="form-control" name="content">${game.content}</textarea>
		  	</div>
		  	<div class="form-group" style="display:none;">
		    	<label>메인내용</label>
		    	<textarea rows="10" class="form-control" name="longcontent">${game.longcontent}</textarea>
		  	</div>
		  	<div id="summernote">${game.longcontent}</div>
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
			                        <input type="file" name="Mfilelist" value="" accept=".gif, .jpg, .png">
		    						<label>서브이미지:</label>
			                        <input type="file" name="filelist" class="sub" multiple accept=".gif, .jpg, .png">
			                    </div>
			                    <div class="uploadResult">
			                    	<div class="mainimg-box"><span>메인이미지</span>			         
				                        <div class="mainimg">			                        	
				                        	<span>${main.oriFilename}</span>
				                        	<input type="hidden" name="mImgNum" value="${main.imgNum}">
				                        </div>
			                        </div>
			                        <div class="subimg-box"><span>서브이미지</span>
			                        <c:forEach items="${imglist}" var="img">
				                        <c:if test="${img.isimg == 'S'}">
					                        <div class="subimg" id="parent">			                        	
					                        	<span>${img.oriFilename}</span>
					                        	<input type="hidden" name="sImgNum" value="${img.imgNum}">
					                        	<button id="child" onclick="deleteParent(this)">X</button>
					                        </div>
				                        </c:if>
			                        </c:forEach>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
		    </div>
		  	<div class="btn-group">
			  	<button type="submit" class="btn btn-primary">수정</button>
			  	<a href="<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}">
			  		<button type="button" class="btn btn-primary">취소</button>
			  	</a>
			</div>
		</form>
    </div>
    <script type="text/javascript">
	    $('#summernote').summernote({
	        placeholder: '내용',
	        tabsize: 2,
	        height: 300,
	        toolbar: [
				    // [groupName, [list of button]]
				    ['fontname', ['fontname']],
				    ['fontsize', ['fontsize']],
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    ['color', ['forecolor','color']],
				    ['table', ['table']],
				    ['para', ['ul', 'ol', 'paragraph']],
				    ['height', ['height']],
				    ['insert',['picture','link','video']],
				    ['view', ['fullscreen', 'help']]
	        ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	    });
	      $('#summernote').summernote('foreColor', 'white');
	      $('#summernote').summernote('backColor', 'black');
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
	      //수정에서 이미지옆에 X버튼 클릭시 삭제
	      function deleteParent(child) {
	    	  //parent 변수선언
	    	  let parent = child.parentNode;
	    	  //부모노드삭제
	    	  parent.parentNode.removeChild(parent);
	    	}
    </script>
</body>
</html>
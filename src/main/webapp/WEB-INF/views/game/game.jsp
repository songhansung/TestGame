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
        .gamelist{
            width: 1000px;
            color: white;
            margin: 0 auto;
            padding-top: 20px;
			
        }
        .gamelist-table{
            margin-top: 30px;
            margin-bottom: 30px;
            width: 100%;
            text-align: center;
            border-collapse: collapse;
  			border-spacing: 0 20px;
  			border-top: 1px solid white;
  			
        }
        .gamelist-table th, td{
			border-bottom: 1px solid white;
			padding: 10px;
			background-color: rgb(18,18,18);
        }
        .pagination{
        	margin:0;
        }
        .gamelist-table .discount-btn{
        	width: 400px;
    	}
    	.discount-box{
        	position: relative;
        	float: right;
    		width: 400px;
	    }
	    .discount-sudbox{
	        position: absolute;
	        width: 400px;
	        height: 300px;
	        background-color: burlywood;
	        display: none;
	    }
	    .discount-sudbox .sudbox-input{
	    	width: 100%;
	    	height: 100px;
	    	margin-top: 20px;
	    }
    </style>
</head>
<body>
	<div class="main-body">
		<div class="gamelist">
			<form action="<%=request.getContextPath()%>/game/game" method="get" class="list-form">
	            <div class="input-group mb-3">
	                <select class="form-control col-3" name="type">
	                    <option value="1" <c:if test="${pm.criteria.type == 1}">selected</c:if>>제목</option>
	                    <option value="2" <c:if test="${pm.criteria.type == 2}">selected</c:if>>내용</option>
	                    <option value="3" <c:if test="${pm.criteria.type == 3}">selected</c:if>>개발사</option>
	                </select>
	                <input type="text" class="form-control" placeholder="Search" name="search" value="${pm.criteria.search}" >
	                <div class="input-group-append">
	                  <button class="btn btn-success" type="submit">검색</button>
	                </div>
	            </div>
            </form>            
	            <a href="<%=request.getContextPath()%>/game/register">           	
			        <button type="button" class="btn btn-primary col-5">제품등록</button>			        
	            </a>            
	            <div class="discount-box">
			        <button type="button" class="btn btn-primary discount-btn col">할인등록</button>
			        <form action="<%=request.getContextPath()%>/game/discount" method="post">
			        <div class="discount-sudbox">
			            <div class="sudbox-input">
			                <input type="text" placeholder="할인율" name="discount" style="text-align:right;">
			                <input type="text" placeholder="할인기간" name="discountTime" style="text-align:right;">
			            </div>
			            <div class="sudbox-btn">
			                <button type="button" class="btn btn-primary btn-apply">적용</button>
			                <button type="button" class="btn btn-primary">취소</button>
			            </div>
			        </div>
			        </form>
			    </div> 
            <table class="gamelist-table">
                <tr>
                    <th>제품번호</th>
                    <th>메인이미지</th>
                    <th>제목</th>
                    <th>출시일자</th>
                    <th>개발사</th>
                    <th>가격</th>
                    <th>할인여부</th>
                </tr>
               <c:forEach items="${list}" var="game">
	                <tr class="gamelist-items" align="center"> 
	                    <td>${game.gameNum}</td>
	                    <td onClick="location.href='<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}'" style="cursor:pointer;">
	                    	<c:forEach items="${imglist}" var="img">                
	                    		<c:if test="${img.isimg eq 'M' && img.gameNum == game.gameNum && img.isdel eq 'N'}">
	                    			<img src="<%=request.getContextPath()%>/resources/img/${img.filename}" style="width: 200px; height: 100px;">
	                    		</c:if>
	                    	 </c:forEach>
	                    </td>
	                    <td onClick="location.href='<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}'" style="cursor:pointer;">${game.title}</td>
	                    <td>${game.launch}</td>
	                    <td>${game.company}</td>
	                    <td>${game.price}</td>
	                    <td>
	                    	<div class="form-check-inline">
						      	<label class="form-check-label" for="check1">
						        	<input type="checkbox" class="form-check-input" id="cnt" name="cnt" value="${game.gameNum}">
						      	</label>
						    </div>
	                    </td>
	                </tr>
                </c:forEach>
            </table>
            <ul class="pagination justify-content-center">
			  	<c:if test="${pm.prev}">
			    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/game/game?page=${pm.startPage-1}&type=${pm.criteria.type}&search=${pm.criteria.search}">이전</a></li>
			    </c:if>
			    <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
			    	<li class="page-item <c:if test="${index == pm.criteria.page}">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/game/game?page=${index}&type=${pm.criteria.type}&search=${pm.criteria.search}">${index}</a></li>
			    </c:forEach>
			    <c:if test="${pm.next}">
			    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/game/game?page=${pm.endPage+1}&type=${pm.criteria.type}&search=${pm.criteria.search}">다음</a></li>
			    </c:if>
		  	</ul>
        </div>
    </div>
    <script type="text/javascript">
	    $(function(){
	        $('.discount-btn').click(function(){
	            $('.discount-sudbox').toggle();
	            
	        })
	        $('.btn-apply').click(function(){
	        	ajaxExample();
	        })
	    })
	    function ajaxExample(){
		    // 사용자 ID를 갖고 온다.
		    var userId = '${user.id}';
		 
		    // name이 같은 체크박스의 값들을 배열에 담는다.
		    var checkboxValues = [];
		    $("input[name='cnt']:checked").each(function(i) {
		        checkboxValues.push($(this).val());
		    });
		     
		    // 사용자 ID(문자열)와 체크박스 값들(배열)을 name/value 형태로 담는다.
		    var discount = $("input[name='discount']").val();
		    var discountTime = $("input[name='discountTime']").val();
		    var allData = {"checkArray": checkboxValues, "discount": discount, "discountTime":discountTime };
		    console.log(allData);
		    $.ajax({
		        url:"<%=request.getContextPath()%>/game/discount",
		        type:'POST',
		        data: allData,				
		      //데이터 전송이 완료되면 출력되는 메시지
		
		        success:function(data){
		            alert("완료!");
		            //window.opener.location.reload();
		            //self.close();
		        },
		
		       //에러가 발생되면 출력되는 메시지
		
		        error:function(jqXHR, textStatus, errorThrown){
		            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		            //self.close();
		        }
		    });
		}
    </script>
</body>
</html>
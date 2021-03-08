<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		.main-body{      	
            background-color: rgb(60,60,60);
            width: 100%;
            height: 100%
        }
        .main-content{
            width: 1500px;
            color: white;
            margin: 0 auto;
        }
        .main-heder{
        	width: 1500px;
	        height: 100%;
	        margin: 0 auto;
	        background-color: rgb(60,60,60);
       	}
        .main-searchbar{
	        width: 100%;
	        height: 70px;
	        padding: 10px 0 10px 0;
	    }	    
	    .main-searchbar .searchbar-right{
	        height: 50px;
            width: 300px;
            padding: 0 15px;
            text-align: center;
	        float: right;
	    }
	    .searchbar-right .searform{
            box-sizing: border-box;
            padding-top: 12px;
            height: 100%;
            width: 250px;
            background-color: black;
            border-radius: 5px;
        }
        .searchbar-right .searform .search-btn{
            background-color: black;
            border: none;
        }
        .searchbar-right .searform .search-btn i{
            color: white;
        }
        .searchbar-right .searform .search-input{
            display: inline;
        }
        .searchbar-right .searform .search-input input{
            background-color: black;
            border: none;
            color: white;
            outline: none;
        }
        .main-content .game-list-row-box .game-list-row{
            width: 900px;
            height: 120px;
            margin: 0 auto;
            padding: 10px;
            box-sizing: border-box;
            display: flex;
        }
        .main-content .game-list-row-box .game-list-row .img-box{
            height: 100%;
            width: 300px;
        }
        .main-content .game-list-row-box .game-list-row .sub-box{
            background-color: rgb(18,18,18);
            width: 600px;
            height: 100%;
            
            padding-left: 20px;
            box-sizing: border-box;
        }
        .main-content .game-list-row-box .game-list-row .sub-box .title-box{
        	width: 100%;
        	height: 50%;
        	line-height: 49px;
        	color: white;
        }
        .main-content .game-list-row-box .game-list-row .sub-box .review-box{
        	width: 100%;
        	height: 50%;
        	padding-top: 14px;
        }
        .main-content .game-list-row-box .game-list-row .sub-box .review-box .right-box{
        	float: right;
        	margin-right: 20px;
        	line-height: 29px;       	
        }
        .main-content .game-list-row-box .game-list-row .sub-box .review-box .sale-img{
        	display: inline-block;
        	width: 90px;
        	height: 30px;
        	background-color: white;
        	text-align: center;
        	border-radius: 4px;
        }
        .main-content .game-list-row-box .game-list-row .sub-box .review-box .sale-img span+span{
        	margin-left: 10px;
        }
        .search-none{
        	font-size: 26px;
        	color: white;
        	text-align: center;
        }
	</style>
</head>
<body>
	<div class="main-body">
		<div class="main-heder">
			<div class="main-searchbar">
	            <div class="searchbar-right">
	                <form class="searform" action="<%=request.getContextPath()%>/game/list" method="get">
			            <button class="search-btn"><i class="fas fa-search"></i></button>			         
			            <div class="search-input">
			                <input class="input-text" type="text" placeholder="검색" value="${pm.criteria.search}" name="search">
			                <button class="search-btn" onclick="clearInput()" type="button"><i class="fas fa-times"></i></button>
			            </div>			            	
			        </form>
	            </div>
	        </div>
		</div>
		<c:if test="${list.size() == 0}">
			<div class="search-none">
				<span>검색 결과가 없습니다.</span>
			</div>
		</c:if>		
		<div class="main-content">
			<div class="game-list-row-box">
            	<c:forEach items="${list}" var="game">          	
            		<a href="<%=request.getContextPath()%>/game/detail?gameNum=${game.gameNum}">        		
		                <div class="game-list-row">	                	
		                    <div class="img-box">
		                    	<c:forEach items="${imglist}" var="img">
		                    		<c:if test="${img.isimg eq 'M' && img.gameNum == game.gameNum && img.isdel eq 'N'}">                
		                        	<img src="<%=request.getContextPath()%>/resources/img/${img.filename}" style="height: 100%;width: 100%;">
		                        	</c:if>
		                        </c:forEach>
		                    </div>
		                    <input type="hidden" name="gameNum" value="${game.gameNum}">	                    
		                    <div class="sub-box">
		                        <div class="title-box"><span>${game.title}</span></div>
		                        <div class="review-box">	 	
		                        	<c:if test="${game.disprice == 0}">	
		                        		<div class="right-box">                        	
		                        			<span>₩ ${game.price}</span>
		                        		</div>
		                        	</c:if>
		                        	<c:if test="${game.disprice != 0}">
		                        		<div class="right-box">
		                        			<c:forEach items="${dislist}" var="dis">
		                        				<c:if test="${dis.gameNum == game.gameNum}">
			                        				<div class="sale-img"><span>sale</span><span>${dis.discount}%</span></div>
			                        			</c:if>
			                        		</c:forEach>
			                        		<span style="text-decoration:line-through;">₩ ${game.price}</span>
			                        		<span>₩ ${game.disprice}</span>
		                        		</div>
		                        	</c:if>
		                        </div>
		                    </div>		                                        
		                </div>
	                </a>                            	            
            	</c:forEach>              
            </div>
		</div>
	</div>
	<script type="text/javascript">
	function clearInput(){
		var el = document.getElementsByClassName('input-text');
		for(var i=0; i<el.length; i++){
			el[i].value = '';
		}		
	};
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<!-- Demo styles -->
	<style>
		html,
		body {
			position: relative;
			height: 100%;
		}
		body {
			font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
			font-size: 14px;
			color: #000;
			margin: 0;
			padding: 0;
			background-color: rgb(60,60,60);
		}     
		.swiper-container {
			width: 100%;
			height: 300px;
			margin-left: auto;
			margin-right: auto;
		}

		.swiper-slide {
			background-size: cover;
			background-position: center;
		}

		.gallery-top {
			height: 500px;
			width: 60%;
		}

		.gallery-thumbs {
			height: 100px;
			box-sizing: border-box;
			padding: 10px 0;
			width: 60%;
		}

		.gallery-thumbs .swiper-slide {
			width: 25%;
			height: 100%;
			opacity: 0.4;
		}

		.gallery-thumbs .swiper-slide-thumb-active {
			opacity: 1;
		}
		.gametitle-box{
			width: 60%;
			font-size: 30px;
			margin-left: auto;
			margin-right: auto;
			margin-top: 10px;
			margin-bottom: 10px;
			color: white;
			font-size: 26px;
		}
		.sbcontent-box{
			width: 70%;
			height: 200px;
			margin-left: auto;
			margin-right: auto;
		
		}
		.sbcontent-box .sbtext-box{
			height: 200px;
			display:flex;
			background-color: black;
		}
		.sbcontent-box .sbtext-box .main-img{
			flex-basis: 25%;
			height: 100%;			
		}
		.sbcontent-box .sbtext-box .main-img img{
			width: 100%;
      		height: 100%;
		}
		.sbcontent-box .sbtext-box .text-box{
			flex-basis: 50%;
			height: 100%;
			box-sizing: border-box;
			padding: 15px 20px 15px 0px;
			color: white;
			border-bottom: 1px solid white;
			margin-left: 20px
		}
		.sbcontent-box .sbtext-box .buy-box{
			flex-basis: 25%;
			box-sizing: border-box;
			padding-top: 15px;
			padding-bottom: 15px;
			padding-right: 10px;
			color: white;
			border-bottom: 1px solid white;
		}
		.sbcontent-box .sbtext-box .buy-box .price-box,.disprice-box{
			font-size: 20px;
			text-align: right;
			box-sizing: border-box;			
		}
		.sbcontent-box .sbtext-box .buy-box .buy-btn-box{
			margin-top: 50px;
		}
		.sbcontent-box .sbtext-box .buy-box .buy-btn-box form{
			display: inline-block;
			float: right;
		}
		.sbcontent-box .sbtext-box .buy-box .buy-btn-box form+form{
			margin-right: 5px;
		}
		.sbcontent-box .sbtext-box .buy-box .buy-btn-box button{
			font-weight: bold;			
		}
		.maincontent-box{
			width: 60%;
			margin-left: auto;
			margin-right: auto;
			padding-top: 10px;
			margin-top: 10px;
			margin-bottom: 10px;
			padding-bottom: 10px;
			border-top: 1px double white;
		}
		.dispirce-box {
			height: 30px;
			font-size: 20px;
		}
		.discount-box,.sub-disprice{
			float: right;
			line-height: 30px;
		}
		.discount-box{
			background-color: white;
			height: 30px;
			width: 60px;
			margin-right: 5px;
			text-align: center;
        	border-radius: 4px;
        	color: blue;
        	font-size: 16px;
		}
		.ifbuy-box{
			float: right;
			font-size: 18px;
			font-weight: bold;
			margin-top: 10px;
		}
		.longcontent-box{			
			margin-bottom: 10px;
			background-color: black;
			padding: 10px;
		}
		.review-box{
			width: 70%;
		    margin-left: auto;
		    margin-right: auto;
		    background: black;
		    color: white;
		    box-sizing: border-box;
		    padding-top: 10px;
		    padding-left: 15px;
		    padding-right: 15px;
		}		
		.revice-contentbox{
			display: flex;
		}
		.review-box .revice-left{
			flex: 0 0 20%;
		}
		.review-box .form-control{
			background-color: rgb(80,80,80);
			color: white;
		}
		.review-box .form-group{
			flex: 0 0 80%;
		}
		.review-box .revice-btnbox{
			margin-top: 20px;
		}
		.review-box .btn-success{
			float: right;
		}
		.footer-bar{
			margin-top: 100px;
		}
		input[name=up]{
			display: none;
		}
		.review-box .revice-btnbox .revice-radio-input{
			width:90px;
			height:39px;
			background-color: cadetblue;	
			line-height: 40px;		
			text-align: center;
			border-radius: 2px;
			float: left;
		}
		.review-box .revice-btnbox .revice-radio-input.a{
			background-color:green;
		}
		.review-box .revice-btnbox .revice-radio-input .fa-thumbs-up{
			font-size: 20px;
			
		}
		.review-box .revice-btnbox .revice-radio-input .fa-thumbs-down{
			font-size: 20px;
			line-height: 45px;
		}
		.review-box .revice-btnbox .revice-radio-input.down{
			margin-left: 10px;
		}
		.container{
			width: 70%;
		    margin-left: auto;
		    margin-right: auto;
		    
		    color: white;
		}
		.container .row.left-row{
			height: 100%;
			margin-bottom: 10px;
		}
		.col-sm-8{
			height: 100%;
			padding-right: 0;
		}
		.container .reply-up-box{
			height: 50px;
			background-color: gray;
			box-sizing: border-box;			
		}
		.container .reply-up-box .reply-img-box{
			width: 40px;
			background-color: blue;
			float: left;
			text-align: center;
		}
		.container .reply-up-box .reply-img-box >i{
			line-height: 50px;			
		}
		.container .reply-up-title{
			font-size: 16px;
		}		
		.container .reply-left{
			float: left;
		}
		.container .row.left-row .col-md-9{
			padding-left: 0;
		}
		
	</style>
</head>
<body>
	<div class="gametitle-box"><span>${game.title}</span></div>
	<input type="hidden" name="gameNum" value="${game.gameNum}">
	<div class="swiper-container gallery-top">
		<div class="swiper-wrapper">
		<c:forEach items="${imglist}" var="img">
			<c:if test="${img.isimg == 'S' && img.isdel == 'N'}">
				<div class="swiper-slide" style="background-image:url('<%=request.getContextPath()%>/resources/img/${img.filename}');"></div>
			</c:if>
		</c:forEach>
		</div>
		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>
	</div>
	<div class="swiper-container gallery-thumbs">
		<div class="swiper-wrapper">	 
		<c:forEach items="${imglist}" var="img">
			<c:if test="${img.isimg == 'S' && img.isdel == 'N'}">
				<div class="swiper-slide" style="background-image:url('<%=request.getContextPath()%>/resources/img/${img.filename}')"></div>
			</c:if>
		</c:forEach>		
		</div>
	</div>
	<div class="sbcontent-box">
		<div class="sbtext-box">
			<div class="main-img">
				<c:forEach items="${Mlist}" var="img">
					<c:if test="${img.isimg == 'M' && img.isdel =='N'}">
						<img src="<%=request.getContextPath()%>/resources/img/${img.filename}" >
					</c:if>
				</c:forEach>	
			</div>	
			<div class="text-box">${game.content}</div>
			<div class="buy-box">
				<c:if test="${game.disprice == 0}"> 
				<div class="price-box">
					<span>₩ ${game.price}</span>
				</div>
				</c:if>
				<c:if test="${game.disprice != 0}">
				<div class="price-box">
					<div>
					<span style="text-decoration:line-through;">₩ ${game.price}</span>
					</div>					
				</div>
				<div class="dispirce-box">
					<div class="sub-disprice">
					<span>₩ ${game.disprice}</span>
					</div>
					<div class="discount-box">${dis.discount}%</div>
					</div>	
				</c:if>
				<div class="buy-btn-box">
					<c:if test="${buylist == 0}">					
						<form action="<%=request.getContextPath()%>/game/buy" method="post" >						
							<button type="submit" class="btn btn-warning btn-buy">구매하기</button>
							<input type="hidden" name="gameNum" value="${game.gameNum}">
						</form>
						<form action="<%=request.getContextPath()%>/game/detail" method="post">
							<input type="hidden" name="gameNum" value="${game.gameNum}">
							<button type="submit" class="btn btn-warning btn-bsk" value="${bsk}">장바구니</button>
						</form>
					</c:if>					
					<c:if test="${buylist != 0}">
						<div class="ifbuy-box">이제품은 구매하셨습니다</div>
					</c:if>									
				</div>
			</div>
		</div>
	</div>
	<div class="maincontent-box">
		<div class="longcontent-box">
			${game.longcontent}
		</div>
		<div class="btn-group">
			<a href="<%=request.getContextPath()%>/">
		  		<button type="button" class="btn btn-primary">목록</button>
		  	</a>
		  	<c:if test="${user.rating == 10}">
		  	<a href="<%=request.getContextPath()%>/game/modify?gameNum=${game.gameNum}">
		  		<button type="button" class="btn btn-primary">수정</button>
		  	</a>
		  	<a href="<%=request.getContextPath()%>/game/delete?gameNum=${game.gameNum}">
		  	<button type="button" class="btn btn-primary">삭제</button>
		  	</a>
		  	</c:if>
		</div>
	</div>
	<c:if test="${buylist != 0}">
	<div class="review-box">
		<div class="review-game-title">
			<h3>${game.title} 제품에 대한 평가 작성</h3>
		</div>
		<div class="review-title">
			<p>이 게임의 좋았던 점 또는 싫었던 점, 그리고 이를 다른 사람들에게 추천하는지 여부에 대해 써주세요.<br>
			정중하게 써주셔야 하며 규칙 및 기준을 지키셔야 합니다.</p>
		</div>				
		<form>		
		<div class="revice-contentbox">
			<input type="hidden" value="${game.gameNum}" name='gameNum'>
			<div class="revice-left">
			<span>${user.id}</span>
			</div>	
			<div class="form-group">		    
			    <textarea rows="4" class="form-control" name="content"></textarea>
			    <div class="revice-btnbox">
					<label class="revice-radio-input up" style="cursor: pointer;"><i class="fas fa-thumbs-up"></i><input type='radio' name='up' value='1'></label>
					<label class="revice-radio-input down" style="cursor: pointer;"><i class="fas fa-thumbs-down"></i><input type='radio' name='up' value='-1'></label>
					<button type="button" class="btn btn-success revice-success but">평가 등록</button>
				</div>
			</div>
		</div>		
		</form>		
	</div>
	</c:if>	
	<div class="container" style="margin-top:16px">
	  	<div class="row">
	  		  		
		    <div class="col-sm-8">
		    	<c:forEach items="${likeList}" var="like">			    	
		    	<div class="row left-row">
			    	<div class="col-md-3" style="background-color: black;">
				    	<div class="reply-id-box">
				    	<span>${user.id}</span>
				    	</div>
				    </div>
				    <div class="col-md-9">
				    	<%-- <c:if test=""> --%>
				      	<div class="reply-up-box">
				      		<c:if test="${like.up == 1}">
					      		<div class="reply-img-box">
						      		<i class="fas fa-thumbs-up"></i>			      		
						      	</div>
						      	<div class="reply-up-title">
						      		<span>추천</span>
						      	</div>
						      	<div style="color: rgb(80,80,80)">
						      	게시 일시 : ${like.registerDate}
						    	</div>	
					      	</c:if>
					      	<c:if test="${like.up != 1}">
						      	<div class="reply-img-box">
						      		<i class="fas fa-thumbs-down"></i>			      		
						      	</div>
						      	<div class="reply-up-title">
						      		<span>비추천</span>
						      	</div>
						      	<div style="color: rgb(80,80,80)">
						      	게시 일시 : ${like.registerDate}
						    	</div>	
					      	</c:if>					      			      				      	
				      	</div>      					      	
					    <div style="background-color: black;">
					    	${like.content}
					    </div>
				    </div>
			    </div>
			    </c:forEach>			    	
		    </div>			    	    
		    <div class="col-sm-4">
		    	<div class="reply-right-box">
		    		<i class="fas fa-thumbs-up"></i>
		    	</div>
		    </div>		             
	  	</div>
	</div>
    <!-- Swiper JS -->
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
      
    <!-- Initialize Swiper -->
    <script>
    	var count = '${imglist.size()}';

    		if(count >= 4)
        		count = 4;		

    	 		
    	var galleryThumbs = new Swiper('.gallery-thumbs', {
        	spaceBetween: 10,
            slidesPerView: count,
            loop: true,
            freeMode: true,
            loopedSlides: 5, //looped slides should be the same
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
        });
        var galleryTop = new Swiper('.gallery-top', {
            spaceBetween: 10,
            loop: true,
            loopedSlides: 5, //looped slides should be the same
            autoplay: true,
            autoplaySpeed: 2000,
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            },
            thumbs: {
              swiper: galleryThumbs,
            },
        });
        $(function(){
        	$('.btn-buy').click(function() {
        		
            	var price = '${game.price}';
            	price = parseInt(price);
            	var monye = '${user.money}';
            	var disprice = '${game.disprice}'
            	disprice = parseInt(disprice);
            	monye = parseInt(monye);
     
    			var id = '${user.id}';
    			if(id == ''){
    				alert('로그인하세요')
    				return false;
    			}
    			if(disprice == 0){
	    			if(monye < price){
	    				alert('잔액이부족합니다')
	    				return false;
	    			}
	    			alert('구매완료')
    			}else{
    				if(monye < disprice){
    					alert('잔액이부족합니다')
    					return false;
    				}
    				alert('구매완료')
    			}
        	})
        	$('.btn-bsk').click(function() {
				var ex = '${bsk}'
				var id = '${user.id}';
				if(id == ''){
					alert('로그인하세요')
					return;
				}
				if(ex == 'true'){
					alert('장바구니에 담았습니다')
				}else{
					alert('이미담겨져 있습니다.')
				}
			})
        })
        //추천,비추천 클래스넣어서 색상변경하기
        $(function () {
        	$('.revice-radio-input').click(function(){
            	$('.revice-radio-input').removeClass('a')
            	$(this).addClass('a');
            })
		})
        //추천비추천리뷰 에이잭스로 전송
		$('.revice-success').click(function() {
			
			var gameNum = $('input[name=gameNum]').val();
			var id = '${user.id}';
			var up = $('input[name=up]:checked').val();
			var content = $('[name=content]').val();
			
			if(id == ''){
				alert('추천/비추천 기능은 로그인 해야합니다.')
				return;
			}
			
			var obj = $(this);
			var sendData = { 'gameNum' : gameNum, 'id' : id, 'up' : up, 'content' : content}
			$.ajax({
				url : '<%=request.getContextPath()%>/game/like',
				type : 'post',
				data : sendData,
				success : function(data){
					console.log('리뷰가 완료되었습니다.')
				}
				
			})
		})
    </script>
    
</body>
</html>
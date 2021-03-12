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
    </script>
    
</body>
</html>
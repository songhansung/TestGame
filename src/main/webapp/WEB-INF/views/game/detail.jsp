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
		}
		.sbcontent-box{
			width: 70%;
			height: 200px;
			background-color: beige;
			margin-left: auto;
			margin-right: auto;
		
		}
		.sbcontent-box .sbtext-box{
			height: 200px;
			display:flex;
		}
		.sbcontent-box .sbtext-box .main-img{
			flex-basis: 25%;
			height: 100%;
			background-color: brown;
			padding-top: 15px;
      		padding-bottom: 15px;
		}
		.sbcontent-box .sbtext-box .main-img img{
			width: 100%;
      		height: 100%;
		}
		.sbcontent-box .sbtext-box .text-box{
			flex-basis: 50%;
			height: 100%;
			background-color: cornflowerblue;
			box-sizing: border-box;
			padding: 15px 20px 15px 20px;
		}
		.sbcontent-box .sbtext-box .buy-box{
			flex-basis: 25%;
			width: 100%;
			height: 100%;
			background-color: indianred;
			box-sizing: border-box;
			padding-top: 50px;
			padding-bottom: 50px;
		}
		.sbcontent-box .sbtext-box .buy-box .price-box{
			font-size: 20px;
			padding-right: 30px;
			text-align: right;
			box-sizing: border-box;
		}
		.sbcontent-box .sbtext-box .buy-box .buy-btn-box{
			text-align: center;
			margin: 0;
			padding-right: 30px;
			padding-left: 30px;
		}
		.sbcontent-box .sbtext-box .buy-box .buy-btn-box button{
			font-weight: bold;
		}
		.maincontent-box{
			width: 70%;
			margin-left: auto;
			margin-right: auto;
		}
	</style>
</head>
<body>
	<div class="gametitle-box"><span>배틀그라운드</span></div>
	<div class="swiper-container gallery-top">
		<div class="swiper-wrapper">
		<!-- 
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-1.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-2.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-3.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-4.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-5.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-6.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-7.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-8.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-9.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-10.jpg)"></div>
		-->
		<c:forEach items="${imglist}" var="img">
			<c:if test="${img.isimg == 'S'}">
				<div class="swiper-slide" style="background-image:url('<%=request.getContextPath()%>/resources/img/${img.filename}')"></div>
			</c:if>
		</c:forEach>
		</div>
		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>
	</div>
	<div class="swiper-container gallery-thumbs">
		<div class="swiper-wrapper">
		<!-- 
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-1.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-2.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-3.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-4.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-5.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-6.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-7.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-8.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-9.jpg)"></div>
			<div class="swiper-slide" style="background-image:url(https://swiperjs.com/demos/images/nature-10.jpg)"></div>
		 -->
		 
		<c:forEach items="${imglist}" var="img">
			<c:if test="${img.isimg == 'S'}">
				<div class="swiper-slide" style="background-image:url('<%=request.getContextPath()%>/resources/img/${img.filename}')"></div>
			</c:if>
		</c:forEach>
		
		</div>
	</div>
	<div class="sbcontent-box">
		<div class="sbtext-box">
			<div class="main-img">
				<c:forEach items="${imglist}" var="img">
					<c:if test="${img.isimg == 'M'}">
						<img src="<%=request.getContextPath()%>/resources/img/${img.filename}" >
					</c:if>
				</c:forEach>	
			</div>	
			<div class="text-box">${game.content}</div>
			<div class="buy-box">
				<div class="price-box"><span>₩ ${game.price}</span></div>
				<div class="buy-btn-box row">
					<button type="button" class="btn btn-warning col-6">구매하기</button>
					<button type="button" class="btn btn-warning col-6">장바구니</button>
				</div>
			</div>
		</div>
	</div>
	<div class="maincontent-box">
	  <div class="longcontent-box">
	  		${game.longcontent}
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
    </script>
</body>
</html>
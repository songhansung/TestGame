<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		  width: 50%;
		}
		
		.gallery-thumbs {
		  height: 100px;
		  box-sizing: border-box;
		  padding: 10px 0;
		  width: 50%;
		}
		
		.gallery-thumbs .swiper-slide {
		  width: 25%;
		  height: 100%;
		  opacity: 0.4;
		}
		
		.gallery-thumbs .swiper-slide-thumb-active {
		  opacity: 1;
		}
	</style>
</head>
<body>
	<div class="swiper-container gallery-top">
          <div class="swiper-wrapper">
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
          </div>
          <!-- Add Arrows -->
          <div class="swiper-button-next swiper-button-white"></div>
          <div class="swiper-button-prev swiper-button-white"></div>
        </div>
        <div class="swiper-container gallery-thumbs">
          <div class="swiper-wrapper">
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
          </div>
        </div>
      
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
      
        <!-- Initialize Swiper -->
        <script>
          var galleryThumbs = new Swiper('.gallery-thumbs', {
            spaceBetween: 10,
            slidesPerView: 4,
            freeMode: true,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
          });
          var galleryTop = new Swiper('.gallery-top', {
            spaceBetween: 10,
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            },
            thumbs: {
              swiper: galleryThumbs
            }
          });
        </script>
</body>
</html>
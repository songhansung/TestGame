<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

	<title>Home</title>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<style>
        .main-body{
            background-color: rgb(60,60,60);
            width: 100%;
            height: 100%;
        }
        .main-body-home{
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
	    .main-title{
	    	color: white;
	    	font-size: 26px;
	    	padding-left: 50px;
	    	padding-bottom: 10px;
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
	    .slick-items{
	        width: 1500px;
	        height: 600px;
	        position: relative;
	        box-sizing: border-box;
	        padding-left: 50px;
	        padding-right: 50px;
	    }
	    .itmes-btn{
	        position: relative;
	        z-index: 2;
	    }
	    .itmes-btn .left-icon,.right-icon{
	        height: 100px;
	        width: 50px;
	    }
	    .itmes-btn .left-icon{
	        position: absolute;
	        top: 250px;
	        font-size: 50px;
	        text-align: center;
	    }
	    .itmes-btn .right-icon{
	        position: absolute;
	        top:250px;
	        left: 1449px;
	        font-size: 50px;
	        text-align: center;
	    }
	    .itmes-btn .left-icon {
	        width: 50px;
	        height: 100px;
	        background:linear-gradient(
            to left,
            rgba(20, 20, 20, 0) 10%,
            rgba(20, 20, 20, 0.25) 25%,
            rgba(20, 20, 20, 0.5) 50%,
            rgba(20, 20, 20, 0.75) 75%,
            rgba(20, 20, 20, 1) 100%
          );    
	    }
	    .itmes-btn .right-icon {
	        width: 50px;
	        height: 100px;        
	        background:linear-gradient(
            to right,
            rgba(20, 20, 20, 0) 10%,
            rgba(20, 20, 20, 0.25) 25%,
            rgba(20, 20, 20, 0.5) 50%,
            rgba(20, 20, 20, 0.75) 75%,
            rgba(20, 20, 20, 1) 100%
          );    
	    }
	    .itmes-btn .left-icon i,
	    .itmes-btn .right-icon i{
	        font-size: 50px;
	        color: white;
	        line-height: 100px;
	        cursor: pointer;
	    }
	    .main-items{
	        height: 100%;
	        box-sizing: border-box;
	    }
	    .main-items .items-box{
	        width: 900px;
	        height: 100%;
	        float: left;
	    }
	    .main-items .items-box a{
	        height: 600px;
	        display: block;
	    }
	    .main-items .items-box .items-mainimg{
	        background-color: wheat;
	        width: 100%;
	        height: 100%;
	    }
	    .main-items .items-subbox{
	        float: left;
	        width: 500px;
	        height: 100%;
	    }
	    .main-items .items-subbox .items-subimg{
	        box-sizing: border-box;
	        padding: 0;
	        margin: 0;
	        width: 100%;
	        list-style: none;
	    }
	    .main-items .items-subbox .items-subimg li{
	        box-sizing: border-box;
	        height: 300px;
	        width: 50%;
	        float: left;
	    }
	    .slick-dots{
       		background-color: rgb(60,60,60);
       		position: none;
   		}
   		.slick-dotted.slick-slider{
   			margin-bottom: 0;
   		}
   		.test{
	        width: 100%;
	        height: 500px;
	        background-color: coral;
	        margin-top: 25px;
    	}
</style>
<script src="https://kit.fontawesome.com/3a4fdcd1c5.js" crossorigin="anonymous"></script>
</head>

<body>
	<div class="main-body">
	    <div class="main-body-home">
	        <div class="main-searchbar">
	            <div class="searchbar-right">
	                <form class="searform" type="submit" action="<%=request.getContextPath()%>/game/list" method="get">
			            <button class="search-btn"><i class="fas fa-search"></i></button>
			            <div class="search-input">
			                <input class="input-text" type="text" placeholder="검색" name="search">
			                <button class="search-btn" onclick="clearInput()"><i class="fas fa-times"></i></button>
			            </div>
			        </form>
	            </div>
	        </div>
	        <div class="main-title"><span>추천제품</span></div>
	        <div class="itmes-btn">
	            <div class="left-icon"><i class="fas fa-chevron-left prev"></i></div>
	            <div class="right-icon"><i class="fas fa-chevron-right next"></i></div>
	        </div>
	        <div class="slick-items">
	            <div class="main-items">
	                <div class="items-box">
	                    <a href="#">
	                        <img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;">
	                    </a>
	                </div>
	                <div class="items-subbox">
	                    <ul class="items-subimg">
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                    </ul>
	                </div>
	            </div>
	            <div class="main-items">
	                <div class="items-box">
	                    <a href="#">
	                        <img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;">
	                    </a>
	                </div>
	                <div class="items-subbox">
	                    <ul class="items-subimg">
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                    </ul>
	                </div>
	            </div>
	            <div class="main-items">
	                <div class="items-box">
	                    <a href="#">
	                        <img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;">
	                    </a>
	                </div>
	                <div class="items-subbox">
	                    <ul class="items-subimg">
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                        <li><img src="https://img9.yna.co.kr/etc/inner/KR/2019/04/08/AKR20190408066300073_01_i_P2.jpg" alt="" style="width:100%; height: 100%;"></li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	        <div class="test"></div>
	    </div>	    
    </div>
</body>
<script type="text/javascript">
	//메인상단 슬라이더
	$(document).ready(function () {
		$('.slick-items').slick({
			autoplay : true,
			dots: true,
			speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,
			infinite: true,
			autoplaySpeed: 1000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
			arrows: true,
			slidesToShow: 1,
			slidesToScroll: 1,
			fade: false,
	        nextArrow:$('i.next'),
	        prevArrow:$('i.prev'),
		});
	});
	function clearInput(){
		var el = document.getElementsByClassName('input-text');
		for(var i=0; i<el.length; i++){
			el[i].value = '';
		}
		
	};
</script>
</html>

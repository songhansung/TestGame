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
	    	font-weight: bold;
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
	        position: relative;
	        box-sizing: border-box;
	        padding-left: 50px;
	        padding-right: 50px;
	    }
	    .slick-items.main{
	    	margin-bottom: 140px;
	  		padding-bottom: 10px;
	    }
	    .slick-items.sub{
	        width: 1500px;
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
	        background-color: black;	        
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
	        height: 200px;
	        width: 50%;
	        float: left;
	        padding: 5px;
	    }
	    .main-items .items-subbox .items-contents{
        	height: 200px;
        	padding-top: 10px;
        	padding-right: 10px;
        	padding-left: 10px;
   		}
   		.main-items .items-subbox .items-contents .items-title{
   			color: white;
   			text-align: right;
   			font-size: 22px;
   		}
   		.main-items .items-subbox .items-contents .items-price{
   			color: white;
   			text-align: right;
   			font-size: 16px;
   		}
   		.main-items .items-subbox .items-contents .items-discount{
   			color: white;
   			text-align: right;
   			font-size: 16px;
   			height: 34px;
   		}
   		.main-items .items-subbox .items-contents .items-sudcon{
   			color: white;
   		}
   		.main-items .items-subbox .items-contents .items-discount .right-box{
   			float: right;
        	line-height: 29px; 
   		}
   		.main-items .items-subbox .items-contents .items-discount .right-box .sale-img{
   			display: inline-block;
        	width: 90px;
        	height: 30px;
        	background-color: white;
        	text-align: center;
        	border-radius: 4px;
        	color: blue;
   		}
   		.main-items .items-subbox .items-contents .items-discount .right-box .sale-img span+span{
   			margin-left: 10px;
   		}
	    .slick-dots{
       		background-color: rgb(60,60,60);
       		/* position: inherit; */
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
    	.slick-items.main .slick-list{
	        box-shadow: 0px 0px 30px #000;
	        z-index: 2;
    	}
    	.discount-title{
    		height:48px;
    		width:100%;
    		margin-top: 120px;
    		color: white;
    		font-size: 26px;
    		padding-left: 50px;
    		font-weight: bold;
    	}
    	.main-items.sub{
    		box-shadow: 0px 0px 12px #000;	
    		padding: 0;
    		z-index: 3;
    		margin: 0;
    		margin: 10px
    	}
    	/* .main-items.sub+.main-items.sub{
    		padding-left: 20px;
    		z-index: 2;
    	} */
    	.slick-items.sub .slick-list{
    		z-index: 2;
    	}
    	.slick-items.sub .slick-dots{
    
    	}
    	.items-box.sub{
	        width: calc(300%/3);
	    }
	    .items-box.sub > a{
	        height: 450px;
	    }
	    .items-box.sub+.items-box.sub{
	        padding-left: 20px;
	    }
	    .items-box.sub .sub-contents{
	    	width:100%;
	    	height: 150px;
        	color: white;
        	z-index: 5;
        	background-color: black;
        	padding-top: 20px;
        	padding-right: 10px;
    	}
    	.items-box.sub .sub-contents .sub-title{
    		font-size: 30px;
    		text-align: right;
    	}
    	.items-box.sub .sub-contents .items-discount{
    		color: white;
   			text-align: right;
   			font-size: 22px;
   			height: 34px;
    	}
    	.items-box.sub .sub-contents .items-discount .right-box{
   			float: right;
        	line-height: 29px; 
   		}
   		.items-box.sub .sub-contents .items-discount .right-box .sale-img{
   			display: inline-block;
        	width: 90px;
        	height: 30px;
        	background-color: white;
        	text-align: center;
        	border-radius: 4px;
        	color: blue;
        	font-size: 16px;
   		}
   		.items-box.sub .sub-contents .items-discount .right-box .sale-img span+span{
   			margin-left: 10px;
   		}
    	.test{
    		height: 300px;
    		width: 500px;
    		background-color: white;
    	}
    	.home-page-content{
            width: 1500px;
            height: 1000px;
            position: relative;
            box-sizing: border-box;
            padding-left: 50px;
            padding-right: 50px;
            margin-top: 140px;
        }
        .leftcol-menu{
            width: 900px;
        }
        .leftcol-menu >div{
            display: inline;
        }
        .home-leftcol{
            width: 900px;   
            float: left;
            box-sizing: border-box;
        }
        .home-rightcol{
            width: 500px;
            height: 800px;
            background-color: red;
            float: right;
            box-sizing: border-box;
        }
        .home-leftcol .game-list-row{
            width: 100%;
            display: flex;
        }
        .home-leftcol .game-list-row .img-box{
            flex: 3;
            height: 150px;
            background-color: green;
        }   
        .home-leftcol .game-list-row .sub-box{
            flex: 7;
            height: 150px;
            background-color: indianred;
        }
        .home-rightcol >ul >li{
        	list-style: none;
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
	        
	        <div class="main-title"><span>특집 및 추천제품</span></div>
	        
	        <div class="itmes-btn">
	            <div class="left-icon"><i class="fas fa-chevron-left prev main"></i></div>
	            <div class="right-icon"><i class="fas fa-chevron-right next main"></i></div>
	        </div>		    
		        <div class="slick-items main">
		        <c:forEach items="${msimg}" var="sVo">   	        	
		            <div class="main-items">
		                <div class="items-box">               	
		                    <a href="<%=request.getContextPath()%>/game/detail?gameNum=${sVo.main.gameNum}">
		                        <img src="<%=request.getContextPath()%>/resources/img/${sVo.main.filename}" alt="" style="width:100%; height: 100%;">
		                    </a>
		                </div>
	                    <div class="items-subbox">
		                    <ul class="items-subimg">
		                    	<c:forEach items="${sVo.sub}" var="sub">
		                        	<li><img src="<%=request.getContextPath()%>/resources/img/${sub.filename}" alt="" style="width:100%; height: 100%;"></li>
		                        </c:forEach>
		                    </ul>
		                    <div class="items-subbox">
			                    <div class="items-contents">
			                    	<div class="items-title">
			                    		<span>${sVo.main.title}</span>
			                        </div>			                        
			                        <div class="items-discount">
			                        	<c:if test="${sVo.main.discount == 0}">		                        	
				                        	<div class="right-box">                        	
			                        			<span>₩ ${sVo.main.price}</span>
			                        		</div>
		                        		</c:if>
		                        		<c:if test="${sVo.main.discount != 0}">
			                        		<div class="right-box">
				                        		<div class="sale-img"><span>sale</span><span>${sVo.main.discount}%</span></div>
				                        		<span style="text-decoration:line-through;">₩ ${sVo.main.price}</span>
				                        		<span>₩ ${sVo.main.disprice}</span>
			                        		</div>
		                        		</c:if>		                        
			                        </div>
			                        <div class="items-sudcon">
			                        	<span>${sVo.main.content}</span>
			                        </div>			                       
			                    </div>
			                </div>
		                </div>		                
		            </div>
		            </c:forEach>
		        </div>
		        <div class="discount-title">
	        		<span>특별 할인상품</span>
	        	</div>			    	     
	        	<div class="itmes-btn">
		            <div class="left-icon"><i class="fas fa-chevron-left prev sub"></i></div>
		            <div class="right-icon"><i class="fas fa-chevron-right next sub"></i></div>
	        	</div>	        		    
		        <div class="slick-items sub">
	               	<c:forEach items="${sublist}" var="sVo">    		
			            <div class="main-items sub">         		            
			                <div class="items-box sub">               	
			                    <a href="<%=request.getContextPath()%>/game/detail?gameNum=${sVo.main.gameNum}">
			                        <img src="<%=request.getContextPath()%>/resources/img/${sVo.main.filename}" alt="" style="width:100%; height: 100%;">
			                    </a>
			                    <div class="sub-contents">
			                    	<div class="sub-title">
		                        		<span>${sVo.main.title}</span>
		                        	</div>
		                        	<div class="items-discount">
			                        	<c:if test="${sVo.main.discount == 0}">		                        	
				                        	<div class="right-box">                        	
			                        			<span>₩ ${sVo.main.price}</span>
			                        		</div>
		                        		</c:if>
		                        		<c:if test="${sVo.main.discount != 0}">
			                        		<div class="right-box">
				                        		<div class="sale-img"><span>sale</span><span>${sVo.main.discount}%</span></div>
				                        		<span style="text-decoration:line-through;">₩ ${sVo.main.price}</span>
				                        		<span>₩ ${sVo.main.disprice}</span>
			                        		</div>
		                        		</c:if>		                        
			                        </div>
		                    	</div>		                    		
			                </div>       			            
			            </div>
		            </c:forEach>			            			                   
		     	</div>
		     	
		     	<div class="home-page-content">	     		
		     		<div class="leftcol-menu">
			            <div class="home-tap">신작</div>
			            <div class="home-tap">인기</div>
			        </div>
					<c:forEach items="${taplist}" var="sVo">
			        <div class="home-leftcol">
			            <div class="game-list-row" OnClick="location.href ='<%=request.getContextPath()%>/game/detail?gameNum=${sVo.main.gameNum}'" style="cursor:pointer;">
			                <div class="img-box">
								<img src="<%=request.getContextPath()%>/resources/img/${sVo.main.filename}" alt="" style="width:100%; height: 100%;">
			                </div>
			                <div class="sub-box">
								<div class="sub-title">
		                        	<span>${sVo.main.title}</span>
		                        </div>
		                        <div class="items-discount">
		                        	<c:if test="${sVo.main.discount == 0}">		                        	
			                        	<div class="right-box">                        	
		                        			<span>₩ ${sVo.main.price}</span>
		                        		</div>
	                        		</c:if>
	                        		<c:if test="${sVo.main.discount != 0}">
		                        		<div class="right-box">
			                        		<div class="sale-img"><span>sale</span><span>${sVo.main.discount}%</span></div>
			                        		<span style="text-decoration:line-through;">₩ ${sVo.main.price}</span>
			                        		<span>₩ ${sVo.main.disprice}</span>
		                        		</div>
	                        		</c:if>		                        
		                        </div>
			                </div>
			            </div>
			        </div>
					</c:forEach>
			        <div class="home-rightcol">
			            <div class="rightcol-title"><span>타이틀입니다</span></div>
			            <div class="rightcol-title"><span>타이틀입니다</span></div>
			            <div class="rightcol-title"><span>타이틀입니다</span></div>
			            <ul>
			                <li>1</li>
			                <li>2</li>
			                <li>3</li>
			                <li>4</li>
			            </ul>
			        </div>
			    </div>			    
	    </div>	   	    
    </div>
</body>
<script type="text/javascript">
	//메인상단 슬라이더
	$(document).ready(function () {
		$('.slick-items.main').slick({
			autoplay : true,
			dots: true,
			speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,
			infinite: true,
			autoplaySpeed: 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
			arrows: true,
			slidesToShow: 1,
			slidesToScroll: 1,
			fade: false,
	        nextArrow:$('i.next.main'),
	        prevArrow:$('i.prev.main'),
		});
		 $('.slick-items.sub').slick({
			autoplay : false,
			dots: true,
			speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,
			infinite: true,
			autoplaySpeed: 6000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
			arrows: true,
			slidesToShow: 3,
			slidesToScroll: 3,
			fade: false,
	        nextArrow:$('i.next.sub'),
	        prevArrow:$('i.prev.sub'),
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

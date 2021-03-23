<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	<style>
        .login{
            height: auto;
            width: 100%;
            background-image: url(https://downloadwap.com/thumbs2/wallpapers/p2ls/2019/movies/40/9971a07113180017.jpg);
            background-size: cover;
        }
        .header{
            width: 100%;
            height: 100px;
            /* background-color: red; */
        }
        .login-body{
            width: 100%;
            height: 800px;
            box-sizing: border-box;
        }
        .login-body .login-box{
            height: 100%;
            background-color: rgb(30,30,30);
            padding: 50px 100px 20px 100px;
            width: 500px;
            margin: 0 auto;
        }
        .login-body .login-box .login-inbox{
            height: 100%;
        }
        .login-body .login-box .login-inbox .login-img{
            text-align: center;
        }
        .login-body .login-box .login-inbox .login-form{
            margin-top: 30px;
        }
        .login-body .login-box .login-inbox .login-form label{
            color: white;
            margin-bottom: 10px;
        }
        .login-body .login-box .login-inbox .login-form input{
            background-color: gray;
        }
        .login-body .login-box .login-inbox .login-form .form-label{
        	color: white;
        	font-size: 10px;
        }
        label{
        	color: white;
        }
        .footer{
            width: 100%;
            height: 100px;
            /* background-color: red; */
        }
    </style>
</head>
<body>
	<div class="login">
        <div class="header"></div>
		<div class="login-body">
            <div class="login-box">
				<div class="login-img">
				    <a href="<%=request.getContextPath()%>/">
				        <img src="https://store.akamai.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016" height="80" width="250">
				    </a>
				</div>
				<form action="<%=request.getContextPath()%>/signup" class="login-form" method="post">
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="아이디" id="id" name="id" value="${user.id}">
				      <label for="" class="form-label"><span>아이디를입력해주세요(특수문자불가)</span></label>
				    </div>
				    <div class="form-group"><button type="button" class="btn btn-outline-success btn-block" id="dup">중복검사</button></div>
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="이름" id="name" name="name" value="${user.name}">
				    </div>
				    <div class="form-group">
				      <input type="password" class="form-control" placeholder="비밀번호" id="pw" name="pw" value="${user.pw}">
				      <label for="" class="form-label"><span>공백없이7~20자를 입력해주세요</span></label>
				    </div>
				    <div class="form-group">
				      <input type="password" class="form-control" placeholder="비밀번호확인" id="pw2" name="pw2" value="">
				    </div>
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="전화번호" id="phone" name="phone" value="${user.phone}">
				    </div>
				    <div class="form-group">
				      <input type="text" class="form-control" placeholder="이메일" id="email" name="email" value="${user.email}">
				    </div>
				    <button type="submit" class="btn btn-dark btn-block">회원가입</button>
				</form>				
            </div>
        </div>
		<div class="footer"></div>
    </div>
    <script type="text/javascript">
	    var dup = false;
		
		$('#dup').click(function(){
			var id = $('input[name=id]').val();
			var spe = id.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			var korean = id.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi);
			
			if(id == ''){
				alert('아이디를 입력하세요');
				return;
			}
			if ((id.length < 6) || (id.length > 20)) {
			      alert("아이디를 6자리 ~ 20자리 이내로 입력해주세요.");			      
			      return false;
			}
			if (spe >= 0 || korean >= 0) {
			      alert("아이디는 영문,숫자만 입력해주세요.");
			      return false;
			}
			if (id.search(/\s/) != -1) {
			      alert("아이디는 공백없이 입력해주세요.");
			      return false;
			}
			
			var data = { 'id' : id };
			$.ajax({
				url : '<%=request.getContextPath()%>/dup',
				type : 'post',
				data : data,
				success : function(data){
					console.log(data)
					if(data == 'user'){
						alert('이미 가입한 아이디입니다.');
					}else{
						alert('가입 가능한 아이디입니다.');
						dup = true;
					}
				},
				error : function(){
					console.log('실패');
				}
			})
		})
		
		$('input[name=id]').change(function(){
			dup = false;
		})
		$('form').submit(function(){
			var pw = $('input[name=pw]').val();
			var pw2 = $('input[name=pw2]').val();
			var name = $('input[name=name]').val();
			var phone = $('input[name=phone]').val();
			var email = $('input[name=email]').val();
			
			
			
			if(!dup){
				alert('아이디 중복검사를 하세요.');
				return false;
			}
			
			if(name == ''){
				alert('이름을 입력하세요');
				return false;
			}
			if(pw == ''){
				alert('비밀번호를 입력하세요')
				return false;
			}else if(pw.length < 7 || pw.length > 20){
				alert("7자리 ~ 20자리 이내로 입력해주세요.");
				return false;
			}else if(pw.search(/\s/) != -1){
				  alert("비밀번호는 공백 없이 입력해주세요.");
				  return false;
			}
			if(pw != pw2){
				alert('비밀번호가 일치하지 않습니다');
				return false;
			}
			if(phone == ''){
				alert('전화번호를 입력하세요')
				return false;
			}
			if(email == ''){
				alert('이메일을 입력하세요')
				return false;
			}
			alert('회원가입에 성공하셨습니다')
		})
		
    </script>
</body>
</html>
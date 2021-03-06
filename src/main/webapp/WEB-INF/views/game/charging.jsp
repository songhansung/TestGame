<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
	.main-body{
        background-color: rgb(60,60,60);
        width: 100%;
        height: 100%;
        padding-top: 50px;
        padding-bottom: 50px;
    }
    .card-main{
        width: 1000px;
        height: 700px;
        margin: 0 auto;
        border-radius: 2em;
        color: white;
    }
    .card-head{
        width: 100%;
        height: 100px;
        background-color: rgb(254,229,22);
        text-align: center;
        font-size: 30px;
        line-height: 100px;
        color: black;
        border-top-left-radius: 2em;
        border-top-right-radius: 2em;
    }
    .box-radio-input{
        color: black;
        width:140px;
        height:50px;
        background-color: rgb(142,230,26);
        text-align: center;
        font-size: 24px;
        margin-left: 40px;
        margin-right: 40px;
        margin-bottom: 30px;
        line-height: 48px;
        font-weight: bolder;
        
    }
	.card-body{
		height: 500px;
		text-align: center;
	}
	input[name=cp_item]{
		display: none;
	}
	.a{
		background-color: rgb(131,185,70);
	}
	.btn{
		background-color: rgb(254,229,22);
	}
</style>
</head>
<body>
<div class="main-body">
<div class="card-main">
	<div class="card-head shadow">
    	<span>카카오페이</span>
    </div>
	<div class="card-body bg-white mt-0 shadow">
	    <p style="font-weight: bold">카카오페이 현재 사용가능</p>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="5000"><span>5,000원</span></label>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="10000"><span>10,000원</span></label>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="15000"><span>15,000원</span></label>
	    <br>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="20000"><span>20,000원</span></label>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="25000"><span>25,000원</span></label>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="30000"><span>30,000원</span></label>
	    <br>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="35000"><span>35,000원</span></label>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="40000"><span>40,000원</span></label>
	    <label class="box-radio-input"><input type="radio" name="cp_item" value="50000"><span>50,000원</span></label>
	    <p  style="color: #ac2925; margin-top: 30px">카카오페이의 최소 충전금액은 5,000원이며 <br/>최대 충전금액은 50,000원 입니다.</p>
	    <button type="button" class="btn btn-lg btn-block  btn-custom" id="charge_kakao">충 전 하 기</button>
	</div>
</div>
</div>
</body>
<script>
    $('#charge_kakao').click(function () {
        // getter
        var IMP = window.IMP;
        IMP.init('imp43354736');
        var money = $('input[name="cp_item"]:checked').val();
        console.log(money);

        IMP.request_pay({
            pg: 'kakao',
            merchant_uid: 'merchant_' + new Date().getTime(),

            name: '주문명 : 주문명 설정',
            amount: money,
            buyer_email: 'iamport@siot.do',
            buyer_name: '구매자이름',
            buyer_tel: '010-1234-5678',
            buyer_addr: '인천광역시 부평구',
            buyer_postcode: '123-456'
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                $.ajax({
                    type: "POST", 
                    url: "<%=request.getContextPath()%>/charge/point", 
                    //충전 금액값을 보낼 url 설정
                    data: {
                        "amount" : money
                    },
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
            document.location.href="<%=request.getContextPath()%>/game/charging"; 
            //alert창 확인 후 이동할 url 설정
        });
    });
    $('.box-radio-input').click(function(){
    	$('.box-radio-input').removeClass('a')
    	$(this).addClass('a');
    })
</script>
</html>
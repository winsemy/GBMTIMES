<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/Header_N.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#aaa {
		background-color: #f7ffff;
	    margin-top: 50px;
	    margin-bottom: 50px;
	    padding: 30 20 20 30;
}
	}
	
</style>
</head>
<body>
<hr>
<div class="container"  id="aaa">
	<h2>결제완료</h2>
	<p>메이커 요금제 결제가 정상적으로 완료되었습니다.</p>
	<p>아이디 : ${orderinfo.memberId }</p>
	<p>요금제 : ${orderinfo.makerPricingName }</p>
	<p>결제번호 : ${orderinfo.makerPricingIdx }</p>
	<p>결제금액 : ${orderinfo.makerPricingPrice }</p>
	
</div>
</body>
<%@include file="/common/Footer.jsp"%>
</html>
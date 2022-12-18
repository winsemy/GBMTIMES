<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/Header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Style CSS -->
<link rel="stylesheet" href="css/style_jy.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	rel="stylesheet">

</head>

<body class="show-gnb">
	<div id="page-container">
		<div id="newContainer">
			<div id="wPurchaseWrap" class="funding-purchase">

				<div class="wpurchase-wrap">
					<div class="wpurchase-step">
						<ol>
							<li><em>요금제<br>선택
							</em></li>
							<li class="active"><em>결제</em></li>
						</ol>
					</div>
					<form action="javascript:requestPay(this.form)">
						
						<div class="wpurchase-order">
							<div class="order-list" data-choiced-legnth="1">
								<ul>

									<li>
										<div class="info">
											<div class="option">
												<span class="option-section-header">요금제</span>
											</div>
											<p class="title">${memberInfor.makerPricingName }</p>
										</div>
										<div class="info">
											<div class="option">
												<span class="option-section-header">가격</span>
											</div>
											<p class="sum">${memberInfor.makerPricingPrice }원</p>
										</div>
									</li>

								</ul>
							</div>
							<div class="order-addinfo">
								<div class="point">
									<dl id="coupon-field" class="disabled">
										<dt>쿠폰 사용</dt>
										<dd>
											<p class="text"></p>

											<select id="couponSelect" onchange="coupon()">
												<option selected value="">쿠폰을 선택하세요.</option>
												<option value="0.1">10% | 펀딩 10% 웰컴쿠폰_12월</option>
											</select>

										</dd>
									</dl>
									<dl>
										<dt>포인트 사용</dt>

										<dd>
											<label class="wz checkbox"> <input type="checkbox"
												id="checkPointAll" onclick="chkPoint(3000,100)"><span>모두
													사용 (보유 포인트 <span id="usablePoint">${memberInfor.point }</span>P)
											</span>
											</label> <input type="text" id="pointInput"
												class="numOnly pointInput" onchange="changePoint(3000,100)">P
											<p style="font-size: 12px;">
												( 남은포인트 : </span><span name="left_pnt" id="left_pnt">${memberInfor.point }</span>p)
											</p>
										</dd>
									</dl>


								</div>
							</div>
							<div id="reward-funding-price-app"
								data-discount-shipping-charge="0" data-funding-price="79000"
								data-add-donation="0" data-shipping-charge="0">
								<h4 class="BasePrice_title__24p94">결제 예약 금액</h4>
								<div class="DefaultPrice_container__4dYox">
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>결제 금액</dt>
											<dd>
												<span><em class="TitleValuePrice_money__2q48W">${memberInfor.makerPricingPrice }원</em></span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>쿠폰 차감금액</dt>
											<dd>
												<span class="TitleValuePrice_danger__3Sy33" id="minusCoupon">0원</span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>포인트 차감금액</dt>
											<dd>
												<span class="TitleValuePrice_danger__3Sy33" id="minusPoint">0원</span>
											</dd>
										</dl>
									</div>

									<div class="TitleValuePrice_container__2tb72">
										<hr class="TitleValuePrice_divide__-8plx">
										<dl class="TitleValuePrice_total__2cGge">
											<dt>최종 결제 금액</dt>
											<dd>
												<span><em class="totalValue" id="totalValue">${memberInfor.makerPricingPrice }</em></span>
											</dd>
										</dl>
									</div>
								</div>

								<input type="hidden" id="totalPrice" value="79000">
							</div>
						</div>
						<div class="wpurchase-delivery-wrap">

							<div class="wpurchase-supporter-info">
								<h3>
									<em>펀딩 메이커</em>
								</h3>
								<div class="wpurchase-input-box">
									<dl>
										<dt>이름</dt>
										<dd>${memberInfor.memberName }</dd>
									</dl>
									<dl>
										<dt>이메일</dt>
										<dd>${memberInfor.memberEmail }</dd>
									</dl>
									<dl class="supporter-phone-number">
										<dt>휴대폰 번호</dt>
										<dd>${memberInfor.memberPhone }</dd>

									</dl>
								</div>
							</div>
						</div>
						<p>결제수단</p>
						<input type="checkbox" style="font-size:13px;" checked="checked"> 카드결제<br>
						<button type="submit" style="float: right;"class="mi button primary" >결제하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
<script>
function coupon() {
	let total = '';
	let co = $("#couponSelect option:selected").val();
		var minusCoupon = $("#totalValue").text() * co;
		total =$("#totalValue").text() - minusCoupon;
		$("#minusCoupon").text(minusCoupon + "원");
		$("#totalValue").text(total);
}
</script>
<script>
var totalValue = document.getElementById("totalValue").innerHTML;
function chkPoint(min,unit) {
	//input값을 전체 마일리지로 설정 > minusPoint 
	//amt : 결제 금액 / pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
	var amt = '${memberInfor.makerPricingPrice }';
	var v_point = 0; //사용할 포인트 (input 입력값)
	var pnt = '${memberInfor.point }';
	console.log("amt : " + amt );
	console.log("pnt : " + pnt );
	console.log("min : " + min );
	console.log("unit : " + unit );
	if (document.getElementById("checkPointAll").checked)  {
		if (pnt < min) { //최소 사용 단위보다 작을 때
			v_point = 0; 
			
		}else {
			v_point = pnt - pnt%unit; //사용할 포인트 = 전체 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
			console.log("v_point : "+ v_point); 
		}
		
	}
	document.getElementById("minusPoint").innerHTML = v_point + "원";
	document.getElementById("pointInput").value = v_point;
	document.getElementById("totalValue").innerHTML = document.getElementById("totalValue").innerHTML - v_point;

	changePoint(min,unit);
}

function changePoint(min,unit){
	var amt = '${memberInfor.makerPricingPrice }';
	var pnt = '${memberInfor.point }';
	console.log("amt : " + amt );
	console.log("pnt : " + pnt );
	console.log("min : " + min );
	console.log("unit : " + unit );
	 
	var v_point = parseInt(document.getElementById("pointInput").value); //사용할 포인트 (input 입력값)
	if (v_point > pnt) //입력값이 사용가능 포인트보다 클때
	{
		v_point = pnt;
		document.getElementById("pointInput").value = v_point; //input 값 재설정
	}

	if(v_point > amt ){ //결제금액보다 포인트가 더 클 때
		v_point = amt; //사용할 포인트는 결제금액과 동일하게 설정
		document.getElementById("pointInput").value = v_point; //input 값 재설정
	}

	if (v_point < min)  //최소 사용 단위보다 작을 때
	{
		v_point = 0; 
		document.getElementById("pointInput").value = v_point; //input 값 재설정
	}else {
		v_point = v_point - v_point%unit; //사용할 포인트 = 사용할 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
	}

	var v_left = document.getElementsByName("left_pnt"); //사용가능 마일리지, 남은 포인트 값 설정
	for (var i = 0; i < v_left.length; i++) {

		v_left[i].innerHTML = pnt - v_point; //= 전체 포인트 중에 사용할 포인트빼고 남은 포인트

	}
	document.getElementById("totalValue").innerHTML = amt - v_point; //최종 결제금액 = 결제금액 - 사용할 포인트
}
</script>
<script>
function requestPay(data) {
	var IMP = window.IMP;
	IMP.init('imp38150256');

	IMP.request_pay({
		pg : 'html5_inicis',
		merchant_uid : new Date().getTime(), //주문번호
		name : '메이커 - 요금제 결제',
		amount : 10,	
		buyer_email : '${memberInfor.memberEmail }',
		buyer_name : '${memberInfor.memberName }',
		buyer_tel : '${memberInfor.memberPhone }'
	}, function(rsp) {
		console.log(rsp);
		let ordersIdx = new Date().getTime();
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
			$.ajax({
				type : "get",
				url : "insertMakerPricing.do", //insert할 컨트롤러
				data : {
					memberId : '${user.memberId}',
					makerPricingName : '${memberInfor.makerPricingName }',
					makerPricingPrice : document.getElementById("totalValue").innerHTML,
					makerPricingIdx : new Date().getTime()
				},
			});
			location.href = 'makerOrderOk.do?memberId=${user.memberId}';
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
		
	});
}
</script>
<%@include file="/common/Footer.jsp"%>
</html>
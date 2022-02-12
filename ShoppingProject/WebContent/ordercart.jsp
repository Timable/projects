<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String price = request.getParameter("price");
    	String product = request.getParameter("product");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
IMP.init('imp69840046'); //고유 넘버

IMP.request_pay({
    pg : 'inicis', //kg이니시스
    pay_method : 'card', //카드 결제
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '장바구니에 있는 모든상품', //왜 얘는 안넘어오지 ??
    amount : <%= price %>, //판매 가격
    //밑에는 db에서 가지고오기
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자이름',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
//        msg += '고유ID : ' + rsp.imp_uid;
//        msg += '상점 거래ID : ' + rsp.merchant_uid;
//        msg += '결제 금액 : ' + rsp.paid_amount;
//        msg += '카드 승인번호 : ' + rsp.apply_num;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    alert(msg);
    location.href='/ShoppingProject/index.jsp'; 
});
</script>
</body>
</html>
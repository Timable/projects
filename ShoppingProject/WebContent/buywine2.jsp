<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<title>제품 상세 페이지</title>
<style>
   .container {
  	 font-size:14px;
   }
   
   .recommend img {
   		border-radius: 10px;
   		height: 180px;
   }
   
   h1 {
   		font-family: 'Song Myung', serif;
		font-size: 25px;
		color: #606060;
   }
</style>
</head>
<body>
<%
	String sid = (String)session.getAttribute("sid");
%>
<form action="cartconfirm.jsp" method="post">
<div class="container" style="width: 120%">
      
      <div class="row"><h1 class="page-header" style="text-align: center; margin-bottom: 50px;">${productInfo.productName}</h1>
         <input type="hidden" value="yongwoo96" id="product">
      </div>
      <div class="row" style="float: left; text-align: center; width:35%; margin-left:100px;">
         <img alt="productPhoto" src="img/wine1.jpg">
      </div>

      <div class="row productInfo" style="width: 40%; float: right;" >
         <div class="form-group" style="text-align: center;">
            <h3 class="page-header"><span>상품명 : </span><br><small>Yongwoo96</small></h3>
            <input type="hidden" value="Yongwoo96" name="product">
         </div>
         <div class="form-group" style="text-align: left;">
            <label>가격 : 30,000</label><span>&nbsp;<fmt:formatNumber value="${productInfo.price}" type="number"/></span><span>&nbsp;원</span>
            
         </div>
         <input type="hidden" value="${sid}" name="sesid">
         
         <div class="form-group" style="text-align: left;">
            <label>배송비 : </label><span>&nbsp;2500원</span>
            <p>도서산간지역 배송비 5000원 /<br>
             3만원 이상 결제시 무료배송</p>
         </div>
        
         <!-- 수량+가격 표시-->
   <body onload="init();">
   <script language="JavaScript">
   
   var sell_price;
   var amount;
   
   function init () {
      sell_price = document.form.sell_price.value;
      amount = document.form.amount.value;
      document.form.sum.value = sell_price;
      change();
   }
   
   function add () {
      hm = document.form.amount;
      sum = document.form.sum;
      hm.value ++ ;
   
      sum.value = parseInt(hm.value) * sell_price;
   }
   
   function del () {
      hm = document.form.amount;
      sum = document.form.sum;
         if (hm.value > 1) {
            hm.value -- ;
            sum.value = parseInt(hm.value) * sell_price;
         }
   }
   
   function change () {
      hm = document.form.amount;
      sum = document.form.sum;
   
         if (hm.value < 0) {
            hm.value = 0;
         }
      sum.value = parseInt(hm.value) * sell_price;
   }  
   
   </script>
   
	<br>
   <div class="form" style="width: 25%; white-space:nowrap;">
   수량 : <input type=hidden name="price" value="30000">
   <input type="text" name="amount" value="1" size="3" onchange="change();">
   <input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
   
   금액 : <input type="text" name="sum" size="11" readonly>원
   </div>
       <!-- 여기까지 -->
         <hr><br>
         
            <div style="text-align: left; margin-left: 50px;"> <!-- left or center 중에 하나로 하기 -->
				<input type="button" onclick="location.href='order.jsp';" value="주문하기">
                <input type="submit" value="장바구니 담기">
            </div>
         <hr>
      </div>
   </div>
   </form>
   
	<div class="container2" align="center">
      <div style="text-align: center; margin: 80px 0;">
         <h1 style="margin-bottom: 50px;">이런 제품은 어떠세요?</h1>
          <div class="displaynone">
	   <table class="recommend" border=0>
	      <colgroup>
	      <col width="25%">
	         <col width="25%">
	         <col width="25%"> 
	      </colgroup>
	         <tr align="center">
	            <td><a href="buyindex.jsp"><img src="img/pasta.jpeg" width="200px"></a></td>
	            <td><a href="buyindex.jsp"><img src="img/whisky1.jpeg" width="200px"></a></td>
	            <td><a href="buyindex.jsp"><img src="img/yongwoo21.jpeg" width="200px"></a></td>
	         </tr>
	         
	         <tr align="center">
	            <td ><a href="buyindex.jsp"><b>파스타</b></a></td>
	            <td ><a href="buyindex.jsp"><b>위스키</b></a></td>
	            <td ><a href="buyindex.jsp"><b>와인</b></a></td>
	         </tr>
	         <tr align="center">
	            <td ><b>2000원</b></td>
	            <td ><b>3500원</b></td>
	            <td ><b>3000원</b></td>
	         </tr>
	      </table><br>
   			</div><br>
   		</div>
	</div>
   
   
  <div class="container3">
      <div style="text-align: center; margin: 80px 0;">
         <h1 style="margin-bottom: 40px;">Review</h1>
			<div class="displaynone">
        	<label>평점</label>
		      <span class="label-box">
			      <input id="point0" name="point" value="5" type="radio" checked="checked"/><label for="point0" ><span class="point5"><em>★★★★★</em></span></label>
			      <input id="point1" name="point" value="4" type="radio"/><label for="point1"><span class="point4"><em>★★★★</em></span></label>
			      <input id="point2" name="point" value="3" type="radio"/><label for="point2"><span class="point3"><em>★★★</em></span></label>
			      <input id="point3" name="point" value="2" type="radio"/><label for="point3"><span class="point2"><em>★★</em></span></label>
			      <input id="point4" name="point" value="1" type="radio"/><label for="point4"><span class="point1"><em>★</em></span></label>
		      </span>
			</div>
      <br>
      <div class="review">
	      <textarea rows="10" cols="100" id="ta" style="resize: none; width:90%;"></textarea><br>
	      <br>
	      <input type="button" id = "ok" value = "확인">
	      <input type="reset" value="취소">
      </div>
       <!--   <c:forEach begin="1" end="5">
         <div class="panel panel-default">
         </div>
         </c:forEach> -->
      </div>
   </div>
</body>
</html>
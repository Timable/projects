<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="default.css">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<style>
   .form-horizontal {
    	width: 50%;
   }
   
   .product_name {
   		font-family: 'Song Myung', serif;
   		font-size: 20px;
   }
   
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
   
   .row {
   		border-radius: 15px;
   }
   
   .rowqnas {
   		margin-top: 50px;
   }
</style>
</head>
<body>

<%
   String sid = (String)session.getAttribute("sid");
%>
<form action="cartconfirm.jsp" method="post">
<div class="container" style="width: 100%">
      
      <div class="row"><h1 class="page-header" style="text-align: center; margin-bottom: 50px;"></h1>
         <input type="hidden" value="yongwoo96" id="product">
      </div>
      <div class="row" style="float: left; text-align: center; width:35%; margin-left:100px;">
         <img alt="productPhoto" src="img/wine1.jpg">
      </div>

      <div class="row productInfo" style="width: 40%; float: right;" >
         <div class="form-group" style="text-align: left;">
            <div class="product_name">Yongwoo96</div>
            <input type="hidden" value="Yongwoo96" name="product">
         	</div>
         <br>
         <div class="form-group" style="text-align: left;">
            <label>가격 : 100</label><span>&nbsp;원</span>
            <input type="hidden" value="100" name="price">
         </div>
         <div class="form-group" style="text-align: left;">
            <label>배송비 : </label><span>&nbsp;1원</span>
            <p>도서산간지역 배송비 5000원 /<br>
             3만원 이상 결제시 무료배송</p>
         </div>
   		<br>
         <input type="hidden" value="${sid}" name="sesid">
   
         <div class="form-horizontal" style="text-align: left;">
           <th>구매수량</th>
           <td>
           <input type="number" min=1 value=1 name="count">
			
           <a href="#a"></a>
           <a href="#a"></a>
           </td>
         </div>   
         <br>
         
         <div class="row" onload="cart()">
			<input type="button" onclick="location.href='order.jsp';" value="주문하기"> &nbsp;
			<input type="submit" value="장바구니 담기">
         </div>
         
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
	
  <div class="container">
      <div class="row about_product" style="text-align: center;">
      </div>
      <div class="row reviews" style="text-align: center; margin: 80px 0;">
         <h1 class="page-header" style="margin-bottom: 50px;">Review</h1>
          <div class="displaynone">
          
        <label>평점</label>
        <span class="label-box"><input id="point0" name="point" value="5" type="radio" checked="checked"/><label for="point0" ><span class="point5"><em>★★★★★</em></span></label>
      <input id="point1" name="point" value="4" type="radio"/><label for="point1" ><span class="point4"><em>★★★★</em></span></label>
      <input id="point2" name="point" value="3" type="radio"/><label for="point2" ><span class="point3"><em>★★★</em></span></label>
      <input id="point3" name="point" value="2" type="radio"/><label for="point3" ><span class="point2"><em>★★</em></span></label>
      <input id="point4" name="point" value="1" type="radio"/><label for="point4" ><span class="point1"><em>★</em></span></label></span>
      </div>
      <br>
      <div class="review">
	      <textarea rows="10" cols="100" id="ta" style="resize: none; width:90%;"></textarea><br>
	      <br>
	      <input type="button" id = "ok" value = "확인"> &nbsp;
	      <input type="reset" value="취소">
      </div>
      
      <br>
      <div class="rowqnas" style="text-align: center; height: 700px;">
         <h1 class="page-header">상품 Q&A</h1>
         
          
         </div>
      </div>
   
   </div>
 

</body>
</html>
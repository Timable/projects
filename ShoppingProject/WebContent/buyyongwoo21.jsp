<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "reviewVO.ReviewVO" %>
<%@ page import = "java.util.ArrayList" %>    
<%@ page import = "gogoinfoDAO.GogoInfoDAO" %>
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
String product = (String)session.getAttribute("cproduct");
String sid = (String)session.getAttribute("sid");
GogoInfoDAO godao = new GogoInfoDAO();
ArrayList<ReviewVO> rvo = godao.getreview(request, response);
%>
<form action="cartconfirm.jsp" method="post">
<div class="container" style="width: 100%">
      
      <div class="row"><h1 class="page-header" style="text-align: center; margin-bottom: 50px;"></h1>
         <input type="hidden" value="yongwoo21" id="product">
      </div>
      <div class="row" style="float: left; text-align: center; width:35%; margin-left:100px;">
         <img src="img/yongwoo21.jpeg" style="width: 130%">
      </div>

      <div class="row productInfo" style="width: 40%; float: right;" >
         <div class="form-group" style="text-align: left;">
            <div class="product_name">Yongwoo21</div>
            <input type="hidden" value="yongwoo21" name="product">
         	</div>
         <br>
         <div class="form-group" style="text-align: left;">
            <label>가격 : 150</label><span>&nbsp;원</span>
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
        	<input type="submit" value="주문하기" onclick="javascript: form.action='/ShoppingProject/order.jsp';"> &nbsp;
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
	            <td><a href="steakindex.jsp"><img src="img/steak.jpeg" width="200px"></a></td>
	            <td><a href="jonghwanindex.jsp"><img src="img/jonghwan.jpeg" width="200px"></a></td>
	            <td><a href="sangyeon94index.jsp"><img src="img/sangyeon94.jpeg" width="200px"></a></td>
	         </tr>
	         
	         <tr align="center">
	            <td ><a href="steakindex.jsp"><b>스테이크</b></a></td>
	            <td ><a href="jonghwanindex.jsp"><b>Jonghwan</b></a></td>
	            <td ><a href="sangyeon94index.jsp"><b>Sangyeon94</b></a></td>
	         </tr>
	         <tr align="center">
	            <td ><b>50원</b></td>
	            <td ><b>30원</b></td>
	            <td ><b>350원</b></td>
	         </tr>
	      </table><br>
   			</div><br>
   		</div>
	</div>
	
  <div class="container3">
      <div style="text-align: center; margin: 80px 0;">
         <h1 style="margin-bottom: 40px;">Review</h1>
         <div class="displaynone">
           
         </div>
      <br>
      <div class="review">
      
         <table>
         <tr><th>아이디</th><th>상품</th><th>상품평</th><th>별점</th></tr>
         <%for(ReviewVO temp : rvo) { %>
         
            <tr><td width = 10%><%=temp.getId() %></td><td width = 10%><%=temp.getProduct()%></td><td width = 70%><%=temp.getText() %></td><td width = 10%><%=temp.getStar() %></td></tr>
            
         <%} %>
         
         </table>
         <br>
         </div>
    </div>
 </div>
 

</body>
</html>
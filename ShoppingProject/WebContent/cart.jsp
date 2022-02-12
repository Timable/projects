<%@page import="gogoinfoDAO.GogoInfoDAO"%>
<%@page import="cartVO.CartVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="default.css">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<style>

	  .frame {
	   		width: 1200px;
	   }
	   
	   .header {
		   padding: 40px 10px;
		   margin-bottom: 20px;
	   }
	   
	   .container {
	   		overflow: hidden;
	   }
	   
	   .nav{
		   float: left;
		   width: 200px;
		   margin-left: 30px;
	   }
	   
	   .section{
		  float: left;
		  width: 940px;
		  margin: 0 0 30px 30px;
		  text-align: center;
		  background-color: #white;
	   }
	   
	   .section table, td, th{
	   		border-style: hidden;
	   		border-collapse: collapse;
	   }
	  
	  .section .cart {
	  		height: 50px;
	  		line-height: 50px;
	  		margin-bottom: 10px;
	  		background-color: #EFEFEF;
	  		border-radius: 10px;
	  		font-family: 'Gowun Batang', serif;
			font-size: 22px;
			text-align: center;
	  }
	  
	  .sum {
	  		width: 50%;
	  		height: 50px;
	  		line-height: 50px;
	  		margin: 40px auto;
	  		background-color: #FFF0CB;
	  		border-radius: 10px;
	  		font-size: 15px;
	  		text-align: center;
	  }
	  
	  .order input {
	  		border: 2px solid #EFEFEF;
	  		background-color: white;
	  		padding: 10px;
	  		font-size: 15px;
	  }

	</style>

</head>
	<%
	   GogoInfoDAO godao = new GogoInfoDAO();
	   ArrayList<CartVO> cvo = godao.getcart(request, response);
	%>
<body>
	<div class="header">
		<!-- header -->
		<jsp:include page="header.jsp"></jsp:include>
		</div>
	
	<div class="frame">
	<div class="container">
		<div class="nav">
			<!-- nav -->
			<%if(session.getAttribute("sid") != null){ %>
			<jsp:include page="navlogin.jsp"></jsp:include>
			<%}else{ %>
			<jsp:include page="nav.jsp"></jsp:include>
			<%} %>
		</div>
		
	<div class="section">
		<div class="cart"><img src="img/cartplus.png">&nbsp; <span class="font">장바구니</span></div>
		<table border=1>
         <tr height = 45>
               <th width="70%" align="center">상품명</th><th>수량</th><th>가격</th><th>합계</th><th>삭제</th>
         </tr>
         
         <%int sum = 0; %>
         
             <%for(CartVO temp : cvo){%>
            <tr height=37>
            <td width=70% align="center"><%=temp.getProduct() %></td>
            <td><%=temp.getCount() %></td>
            <td><%=temp.getPrice() %></td>
            <td><%=temp.getPrice()*temp.getCount() %></td>
            <% sum += (temp.getCount() * temp.getPrice()); %>
            <form action="delete.do">
            <input type="hidden" name="product" value=<%=temp.getProduct()%>>
            <td><input type="submit" value="삭제"></td>
            </form>
            
            </tr>
            <%} %>
         <%-- 
         
         <tr height=25>
            <th width="70%" align="center">총 금액 :</th>
            <th>           </th>
            <th><%=sum %>   </th>
         </tr> --%>
         </table>
         <form action="ordercart.jsp">
         <div class="sum">
         	총 금액 &nbsp; : &nbsp; <%=sum %> 원 <br>
         	<input type="hidden" name="price" value=<%=sum %>>
         </div>
         <div class="order"  onload="cart()" align="right">
         	<input type="submit" value="주문하기"> &nbsp;
		 </div>
		 </form>
		 
	</div>
	</div>
		<div class="footer">
		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		  width: 600px;
		  margin: 0 0 30px 30px;
		  text-align: center;
		  background-color: #white;
	   }
	   
	   .section table, td, th{
	   		border-style: hidden;
	   		border-collapse: collapse;
	   		 margin: 0 0 30px 30px;
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
		 
		 <form action="order.jsp">
		
		<table border=1>
         <tr height = 45>
               <th width="10%" align="center">상품명</th><td width="20px" align="center"><%=request.getParameter("product") %></td>
			</tr>
			<tr></tr><tr></tr>
		<tr>
				<th>주문 수량</th><td width="20px" align="center"><%=request.getParameter("count") %>
				<%String price = request.getParameter("price"); 
				  String count = request.getParameter("count");
				  int sum = Integer.parseInt(price) * Integer.parseInt(count);%>
		</tr>
			<tr></tr><tr></tr>
			
		<tr>
               <th>주문자 성명</th><td width="20px" align="center"><input type="text" name="name"></td>
         </tr>
         	<tr></tr><tr></tr>
         <tr>
         		<th>핸드폰 번호</th><td width="20px" align="center"><input type="text" name="phone"></td>
         </tr>
         	<tr></tr><tr></tr>
         <tr>
         		<th>배송지 </th><td width="20px" align="center"><input type="text" name="address"></td>
         </tr>
         	<tr></tr><tr></tr>
         <tr>
         		<th>총금액</th><td width="20px" align="left"><%=sum%>
         </td>     
         </table>
         <input type="submit" value="주문하기"> &nbsp &nbsp &nbsp &nbsp <input type="reset" value="취소">
        
         
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
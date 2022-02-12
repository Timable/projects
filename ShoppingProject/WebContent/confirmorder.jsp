<%@page import="gogoDBConn.GogoDBConn"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역 확인</title>
<link rel="stylesheet" href="default.css">
<style>

	.btn #join {
		width: 20%;
		height: 40px;
		background: #FFF0CB;
		border-radius: 11px;
		margin: 20px 5px 5px 5px;
		cursor: pointer;
	}
	
	.btn #cancel {
		width: 20%;
		height: 40px;
		background: #FFF0CB;
		border-radius: 11px;
		margin: 20px 5px 5px 5px;
		cursor: pointer;
	}
	
	.form {
		width: 35%;
		margin: 0 auto;
	}
	
</style>
</head>
<body>




<br><br>
<h1 align = "center">구매 내역 확인</h1>
<br>

<br><br>
<form action="gogoInsert.do" method="post">
<div class="form">
	회원ID <input type="text" name="id"> <br><br>
	상품명 <input type="text" name="goods"> <br><br>
	구매수량 <input type="text" name ="amount"> <br><br>
	총 금액 <input type="text" name="totalp"> <br><br>
	주문자명 <input type="text" name="name"> <br><br>
	주소 <input type="text" name="address"> <br><br>
	전화번호 <input type="text" name="phone"> <br>
</div> 
   <br>
	<div class="btn" align="center">
	  	<input type="submit" id="join" value = "결제"> &nbsp;
		<input type="reset"  id="cancel" onclick="history.go(-1); return false;" value = "취소">
	</div>
</form>
</body>
</html>
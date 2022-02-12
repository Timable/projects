<%@page import="gogoDBConn.GogoDBConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
		width: 40%;
		margin: 0 auto;
	}
	
</style>
</head>
<body>
<br><br>
<h1 align = "center">회원가입</h1>
<br>

<br><br>
<form action="gogoInsert.do" method="post">
<div class="form">
	아이디 <input type="text" name="id"> <br><br>
	비밀번호 <input type="password" name="pw" required> <br><br>
	이름 <input type="text" name ="name" required> <br><br>
	생년월일 <input type="text" name="birth" placeholder="예)19960422" required> <br><br>
	성별 &nbsp;
		남<input type="radio" name="gender" value="남" required> &nbsp;
		여<input type="radio" name="gender" value="여" required> <br><br>
	주소 <input type="text" name="address" required> <br><br>
	전화번호 <input type="text" name="phone" required> <br>
</div> 
<!-- <table border=0 id="form" align="center">
<colgroup>
   <col width="30%">
   <col width="37%">
   <col width="33%"> 
</colgroup>

   <tr><td>아이디</td><td colspan=2><input type="text" name="id"></td></tr>
   
   <tr><td>비밀번호</td><td colspan="2"><input type="password" name="pw" required></td></tr>
   
   <tr><td>이름</td><td colspan="2"><input type="text" name ="name" required></td></tr>
   
   <tr><td>생년월일</td><td colspan="2"><input type="text" name="birth" placeholder="예)19960422" required></td></tr>
   
   <tr><td>성별</td><td colspan="2">남<input type="radio" name="gender" value="남" required>여<input type="radio" name="gender" value="여" required></td></tr>
   
   <tr><td>주소</td><td colspan="2"><input type="text" name="address" required></td></tr>
   
   <tr><td>전화번호</td><td colspan="2"><input type="text" name="phone" required></td></tr>
</table> -->

   <br>
   
	<div class="btn" align="center">
	  	<input type="submit" id="join" value = "회원가입"> &nbsp;
		<input type="reset" id="cancel" value="취소" onclick = "location.href='joinfail2.jsp';">
	</div>
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	alert("로그아웃 성공");
	window.location="index.jsp"
</script>
<body>
<% 
	session.removeAttribute("sid");
%>
</body>
</html>
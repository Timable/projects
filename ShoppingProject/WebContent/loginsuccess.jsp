<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	alert("로그인 성공");
	window.location="indexlogin.jsp"
</script>
<body>
	<%
		String id = request.getParameter("id");
		session.setAttribute("sid", id);
	%>
</body>
</html>
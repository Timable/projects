<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="default.css">
</head>
<%
//프로젝트 경로 구하기
String path=request.getContextPath();
%>
<body>
<div style="position: absolute; left: 650px; top:30px; width:120px;,height:50px;">
<a href="<%=path %>/index.jsp"><img src="img/gogo.png" width="200"></a>
</div>

<div style="position: absolute; left: 1350px; top:30px; width:120px;,height:50px;">
<a href="<%=path %>/cart.jsp"><img src="img/cart.png" width="36"></a>
<a href="<%=path %>/mypage.jsp"><img src="img/mypage.png" width="36"></a>
</div>
<br>
<br>
<br>
<br>
<br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
   <%if(session.getAttribute("sid") != null){%>
      <%request.getRequestDispatcher("insertCart.do").forward(request, response);%>
         <%}else{%>
            alert("로그인을 하세요");
            window.location="index.jsp"
         <%}%>
</script>
</body>
</html>
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
      <%request.getRequestDispatcher("order.jsp").forward(request, response);%>
         <%}else{%>
            alert("�α����� �ϼ���");
            window.location="buyindex.jsp"
         <%}%>
</script>
</body>
</html>
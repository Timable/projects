<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고고주류</title>
<style>
	
	   .frame{
	   	width: 1200px;
	   }
	   
	   .header{
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
		  margin-left: 30px;
	   }
	   
	   .footer{
			margin: 40px 20px 0;
	   }
	   
	}
	</style>
</head>
	<%
	//프로젝트 경로 구하기
	String path=request.getContextPath();
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
		<!-- section -->
		<jsp:include page="buyfruit.jsp"></jsp:include>
		</div>
	</div>
	
		<div class="footer">
		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
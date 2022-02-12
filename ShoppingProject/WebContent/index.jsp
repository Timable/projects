
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고고주류</title>
<script>
	window.onload = function() { /* 객체.속성=값..이벤트,함수 */
		popup(); 
	}
	
	function popup() {
		
	if(document.cookie.indexOf("noticeCookie=notice1") == -1){
		/* 객체.메소드() */	//window.open(인자1, 인자2, 인자3)
		//real 팝업창, alias, 필요한 조건들
		window.open(	
			"popup.html", "popup1",
			"width=450, height=450, top=20, left=350, location=no, menubar=0")
	}
	}
</script>
<link rel="stylesheet" href="default.css">
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
		  margin: 0 0 30px 30px;
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
		<jsp:include page="section.jsp"></jsp:include>
		</div>
	</div>
	
		<div class="footer">
		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
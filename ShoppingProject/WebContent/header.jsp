<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>

	body {
		margin: 0;
	}

	a {
		text-decoration: none;
		color: black;
	}

	.navbar {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 8px 12px;
	}
	
	.navbar_logo {
		margin: 0 auto;
		font-family: 'Song Myung', serif;
		font-size : 50px;
		!important;
	}
	
	.navbar_icons {
		display: flex;
		list-style: none;
	}
	
	.navbar_icons li {
		padding: 8px 8px;
	}
	
	@media screen and (max-width: 768px) {
		.navbar {
			flex-direction: column;
		}
	}
		
</style>
</head>
<%
//프로젝트 경로 구하기
String path=request.getContextPath();
%>
<body>
	<div class="navbar">
		<div class="navbar_logo">
			<a href="index.jsp">고고주류</a>
		</div>
		<ul class="navbar_icons">
			<li><a href="getCart.do"><img src="img/cart.png"></a></li>
			<li><a href="mypage.jsp"><img src="img/mypage.png"></a></li>
		</ul>
	</div>
</body>
</html>
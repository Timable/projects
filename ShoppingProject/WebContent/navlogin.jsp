<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="default.css">
<style>

	* {
		border: 0;
		color: #707070;
	}
	
	.category button {
		font-size: 16px;
		background: #FFFFFF;
		cursor: pointer;
	}
	
	.category button:hover {
		background-color: #FFF0CB;
		border-radius: 4px;
	}
	
	.category #logout {
		width: 100%;
		height: 40px;
		background: #FFF0CB;
		border-radius: 11px;
		margin: 20px 5px 5px 5px;
		cursor: pointer;
	}
	
</style>
</head>
<body>
	<div class="category" align="center">
	<% out.println((String)session.getAttribute("sid")); %> 님 환영합니다~ <br>
	<input type="button" id="logout" onclick="location.href='logout.jsp'" value="logout">
	<br><br>
			<button id="wine" onclick="location.href='listindex.jsp';">Wine</button><br>
			<br>
			<button id="beer" onclick="location.href='listindex2.jsp';">Beer</button><br>
			<br>
			<button id="whisky" onclick="location.href='listindex3.jsp';">Whisky</button>
			<br><br>
			<button id="mealkit" onclick="location.href='listindex4.jsp';">Meal-kit</button>
			<br><br>
			<button id="review" onclick="location.href='review.jsp';">Review</button>
	</div>
</body>
</html>
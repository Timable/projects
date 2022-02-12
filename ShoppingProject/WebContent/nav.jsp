<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="js/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="default.css">
<style>

	.login label {
		padding: 0 0 0 40px;
		font-size: 16px;
		color: #707070;
		cursor: pointer;
	}
	
	.login label[for="txt1_1"] {
		background: url(img/id.png) no-repeat 15px center;
		cursor: pointer;
	}
	
	.login label[for="txt1_2"] {
		background: url(img/pwd.png) no-repeat 15px center;
		cursor: pointer;
	}
	
	.login input {
		margin: 19px 0 0 ;
		height: 0;
		border-top: 2px;
		solid: #707070;
		transition: all .5s;
	}
	
	.login input:focus {
		height: 40px;
	}
	
	.login li ~ li {
		padding: 20px 0 0 ;
	}
	
	.login #login {
		width: 100%;
		height: 40px;
		background: #FFF0CB;
		border-radius: 11px;
		margin: 20px 5px 5px 5px;
		cursor: pointer;
	}
	
	.login #join {
		width: 100%;
		height: 40px;
		background: #FFF0CB;
		border-radius: 11px;
		margin: 5px;
		cursor: pointer;
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
	
</style>
</head>
<body>
	<form action="gogoLogin.do" method="post">
	<div class="login">
		<ul>
			<li>
				<label for="txt1_1">ID</label>
				<input type="text" id="txt1_1" name="id" required>
			</li>
			<li>
				<label for="txt1_2">PASSWORD</label>
				<input type="password" id="txt1_2" name="pwd" required>
			</li>
		</ul>
		<div>
			<input type="submit" id="login" value="LOGIN"><br>
			<input type="button" id="join" onclick="location.href='join.jsp';" value="JOIN">
		</div>
	</div>
	</form>
	<br><br>
	<div class="category" align="center">
			<button id="wine" onclick="location.href='listindex.jsp';">Wine</button><br>
			<br>
			<button id="beer" onclick="location.href='listindex2.jsp';">Beer</button><br>
			<br>
			<button id="whisky" onclick="location.href='listindex3.jsp';">Whisky</button>
			<br><br>
			<button id="mealkit" onclick="location.href='listindex4.jsp';">Meal-kit</button>
			<br><br>
			<button id="review" onclick="location.href='reviewfail.jsp';">Review</button>
	</div>
</body>
</html>
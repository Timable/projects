<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>고고주류 | WINE</title>
<style>

	* {
		margin: 0;
		padding: 0;
	}
	
	li {
		list-style: none;
	}

	.clear {
		clear: both;
	}

	.box {
		width: 940px;
		margin: 0 auto;
	}
	
	.box h3 {
		float: left;
		margin-left: 480px;
		font-family: 'Gowun Batang', serif;
		font-size: 25px;
	}
	
	.box p {
		float: right;
		font-family: 'Gowun Batang', serif;
		font-size: 14px;
	}
	
	.items {
		margin: 80px 40px 0 200px;
		width: 400px;
		float: left;
	}
	
	.items .img {
		margin-left: 100px;
	}
	
	.items .a {
		font-weight: bold;
		font-size: 15px;
		color: #727272;
		margin: 20px 0 0 240px;
	}
	
	.items .b {
		font-weight: bold;
		font-size: 15px;
		color: #727272;
		margin: 8px 0 0 240px;
	}
	
	.items .b span {
		font-size: 15px;
		color: #FFCBCB;
	}
	
	.items .c {
		font-size: 12px;
		color: #727272;
		margin: 15px 0 0 240px;
	}
		
</style>
</head>
<body>
	<div class="box">
		<h3>전체 상품</h3>
		<p> 판매자추천순 | 인기도순 | 최신등록순 </p>
		<div class="clear"></div>
		
		<center>
		<ul class="items">
			<li class="img"><a href="yongwoo96index.jsp"><img src="img/yongwoo96.jpeg"></a></li>
			<li class="a">Yongwoo96</li>
			<li class="b">100원 &nbsp;<span>20%</span></li>
			<li class="c">갑각류, 해산물과의 페어링이 <br> 아주 좋은 말보로 지역의 <br> 소비뇽 블랑</li>
		</ul>
	
		<ul class="items">
			<li class="img"><a href="keunhan96index.jsp"><img src="img/keunhan96.jpeg"></a></li>
			<li class="a">Keunhan96</li>
			<li class="b">50원 &nbsp;<span>20%</span></li>
			<li class="c">견과류의 풍미, <br> 캘리포니아 샤도네이의 깊고 <br> 부드러운 매력</li>
		</ul>
		
		<ul class="items">
			<li class="img"><a href="gayoon97index.jsp"><img src="img/gayoon97.jpeg"></a></li>
			<li class="a">Gayoon97</li>
			<li class="b">300원 &nbsp;<span>20%</span></li>
			<li class="c">붉은 과실, 장미, <br> 미네랄리티가 인상적인 <br> 가성비 뉴질랜드 피노누아</li>
		</ul>
		</center>
		
	</div>
	<div class="clear"></div>
</body>
</html>
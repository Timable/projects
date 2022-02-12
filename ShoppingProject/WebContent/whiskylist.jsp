<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>고고주류 | WHISKY</title>
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
			<li><a href="yeji97index.jsp"><img src="img/yeji97.jpeg"></a></li>
			<li class="a">Yeji97</li>
			<li class="b">200원 &nbsp;<span>20%</span></li>
			<li class="c">대표적인 아메리칸 위스키, <br> 거친 목넘김의 테네시 위스키</li>
		</ul>
	
		<ul class="items">
			<li><a href="sangyeon94index.jsp"><img src="img/sangyeon94.jpeg"></a></li>
			<li class="a">Sangyeon94</li>
			<li class="b">350원 &nbsp;<span>20%</span></li>
			<li class="c">특유의 연기 냄새가 배어 <br> 독특한 향을 지닌 스카치 위스키</li>
		</ul>
		
		<ul class="items">
			<li><a href="yongwoo21index.jsp"><img src="img/yongwoo21.jpeg"></a></li>
			<li class="a">Yongwoo21</li>
			<li class="b">150원 &nbsp;<span>20%</span></li>
			<li class="c">가벼운 향의 캐내디언 위스키</li>
		</ul>
		</center>
		
	</div>
	<div class="clear"></div>
</body>
</html>
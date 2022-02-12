<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
	
	*{
		margin: 0px;
		padding: 0;
		box-sizing: border-box;
	}

	.content{ /*컨텐츠 넓이지정*/
	  	width: 900px;
		height: 600px;
		position: relative;
		margin: 30px auto;
		overflow: hidden;
	}
	
	.slides { /*슬라이드 아이템이 나올 뼈대 지정*/
		  width:600px;
		  height:300px;
		  position:relative;
		  margin: 30px auto;
	}
	
	.slide_item { /*슬라이드 아이템을 absolute로 겹쳐놓고 투명하게 하기*/
		  position:absolute;
		  width:600px;
		  height:300px;
		  opacity:0;
		  transition:all 0.3s;
	}
	
	.ontheSlide { /*현재 아이템에 붙여줄 클래스*/
		  opacity:1;
		  transition:all 0.3s;
	}
	
	.controller span{
		position: absolute;
		background-color: transparent;
		color: black;
		text-align: center;
		border-radius: 50%;
		padding: 10px 20px;
		top: 50%;
		font-size: 1.3em;
		cursor: pointer;
	}
	
	/* 이전, 다음 화살표에 마우스 커서가 올라가 있을 때 */
	.controller span:hover{
		background-color: rgba(128, 128, 128, 0.11);
	}
	
	.nextButton,.prevButton { /*다음,이전 버튼을 드래그되지 않게 방지해주기*/
		 -webkit-user-select: none;
		  -ms-user-select: none;
		  user-select: none
	}
	
	.nextButton { /*다음 버튼을 오른쪽으로 보내기*/
	  right: 10px;
	}
	
	.nextButton:hover {
		transform: translateX(10px);
	}
	
	.prevButton{ /*왼쪽 버튼을 왼쪽으로 보내기*/
	  left: 10px;
	}
	
	.prevButton:hover {
		transform: translateX(-10px);
	}
	
	.items {
		margin-top: 30px;
	}
	
	.items img {
		border-radius: 15px;
		width: 200px;
		height: 300px;
	}
	
	.font {
		font-family: 'Gowun Batang', serif;
		font-size: 25px;
	}
	
</style>
</head>
<body>
	<div class="font" align="center">고고주류's pick!</div>
	
	<div class="content"> <!--전체를 감쌀 뼈대-->
	<div class="slides">  <!--슬라이드 아이템을 감쌀 뼈대-->
	  <div class="slide_item"><a href="noyoonindex.jsp"><img src="img/noyoon.jpeg"></a></div>  <!--슬라이드될 아이템들 -->
	  <div class="slide_item"><a href="yeji97index.jsp"><img src="img/yeji97.jpeg"></a></div>
	  <div class="slide_item"><a href="yongwoo21index.jsp"><img src="img/yongwoo21.jpeg"></a></div>
	</div>
	<p class="controller">
	<span class="nextButton">&rang;</span>  <!--다음 버튼 -->
	<span class="prevButton">&lang;</span>   <!--이전 버튼 -->
	</p>
	</div>
	<script src="slideShow.js"></script>
	
	<br><br><br><br>
	
	<div class="font" align="center">고고주류 인기상품 :D</div>
	<br><br>
	<div class="items" align="center">
		<table align="center" border=0 >
      <colgroup>
      	 <col width="25%">
         <col width="25%">
         <col width="25%"> 
      </colgroup>
         <tr align="center">
            <td><a href="yongwoo96index.jsp"><img src="img/yongwoo96.jpeg"></a></td>
            <td><a href="yeji97index.jsp"><img src="img/yeji97.jpg"></a></td>
            <td><a href="jinindex.jsp"><img src="img/jin.jpg"></a></td>
         </tr>
         
         <tr align="center">
            <td ><a href="yongwoo96index.jsp"><b>Yongwoo96</b></a></td>
            <td ><a href="yeji97index.jsp"><b>Yeji97</b></a></td>
            <td ><a href="jinindex.jsp"><b>Jin</b></a></td>
         </tr>
         <tr align="center">
            <td ><b>100원</b></td>
            <td ><b>200원</b></td>
            <td ><b>30원</b></td>
         </tr>
      </table><br>
	</div><br>
</body>
</html>
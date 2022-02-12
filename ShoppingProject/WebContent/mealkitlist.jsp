<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>고고주류 | MEAL KIT</title>
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
      margin: 20px 0 0 200px;
   }
   
   .items .b {
      font-weight: bold;
      font-size: 15px;
      color: #727272;
      margin: 8px 0 0 200px;
   }
   
   .items .b span {
      font-size: 15px;
      color: #FFCBCB;
   }
   
   .items .c {
      font-size: 12px;
      color: #727272;
      margin: 15px 0 0 200px;
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
         <li><a href="pastaindex.jsp"><img src="img/pasta.jpeg"></a></li>
         <li class="a">파스타</li>
         <li class="b">30원 &nbsp;<span>20%</span></li>
         <li class="c">진하게 끓여낸  특제 토마토 소스에<br>
                     부드러운 풍미를 더한 볼로네제 파스타</li>
      </ul>
   
      <ul class="items">
         <li><a href="steakindex.jsp"><img src="img/steak.jpeg"></a></li>
         <li class="a">스테이크</li>
         <li class="b">50원 &nbsp;<span>20%</span></li>
         <li class="c">'깊고 풍부한 풍미와 육즙'<br>
                     한우 1++등급 스테이크입니다.</li>
      </ul>
      
      <ul class="items">
         <li><a href="fruitindex.jsp"><img src="img/fruit.jpeg"></a></li>
         <li class="a">과일</li>
         <li class="b">20원 &nbsp;<span>20%</span></li>
         <li class="c">부담없이 즐길 수 있는 양으로<br>
                     와인 및 여러종류의 술과 함께<br>
                      페어링 하기 좋은 <br>
                      과일 세트 입니다. </li>
      </ul>
      </center>
      
   </div>
   <div class="clear"></div>
</body>
</html>
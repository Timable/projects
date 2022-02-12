<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>고고주류 | BEER</title>
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
         <li><a href="jonghwanindex.jsp"><img src="img/jonghwan.jpeg"></a></li>
         <li class="a">Jonghwan</li>
         <li class="b">30원 &nbsp;<span>20%</span></li>
         <li class="c">1000년 역사의 효모가 빚어낸 정통 밀맥주</li>
      </ul>
   
      <ul class="items">
         <li><a href="noyoonindex.jsp"><img src="img/noyoon.jpeg"></a></li>
         <li class="a">Noyoon</li>
         <li class="b">30원 &nbsp;<span>20%</span></li>
         <li class="c">아마릴로,치눅,할러타우 홉의 <br>
                  상큼한향이 느껴지는 호피한<br>
                  맥주</li>
      </ul>
      
      <ul class="items">
         <li><a href="jinindex.jsp"><img src="img/jin.jpeg"></a></li>
         <li class="a">Jin</li>
         <li class="b">30원 &nbsp;<span>20%</span></li>
         <li class="c">풍성하고 푹신푹신한 거품.<br>
                  시트러스함과 약간의 산미, <br>
                  밀맥주스러운 바나나향과 <br>
                  정향이 느껴지는 다채로운 맥주</li>
      </ul>
      </center>
      
   </div>
   <div class="clear"></div>
</body>
</html>
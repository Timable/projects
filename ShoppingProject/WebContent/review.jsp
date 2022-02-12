<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "reviewVO.ReviewVO" %>
<%@ page import = "java.util.ArrayList" %>    
<%@ page import = "gogoinfoDAO.GogoInfoDAO" %>

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
		
      <div class="row about_product" style="text-align: center;">
      </div>
      <div class="row reviews" style="text-align: center; margin: 80px 0;">
         <h1 class="page-header" style="margin-bottom: 50px;">Review</h1>
          
     
     
     
     <select name = "product" form = "reviewform">
     	<option value="yongwoo96">yongwoo96</option>
     	<option value="keunhan96">keunhan96</option>
     	<option value="gayoon97">gayoon97</option>
     	<option value="yeji97">yeji97</option>
     	<option value="sangyeon94">sangyeon94</option>
     	<option value="yongwoo21">yongwoo21</option>
     	<option value="jonghwan">jonghwan</option>
     	<option value="noyoon">noyoon</option>
     	<option value="jin">jin</option>
     	<option value="fruit">fruit</option>
     	<option value="steak">steak</option>
     	<option value="pasta">pasta</option>
     </select>
     <br><br>
     
     <form action="review.do" id="reviewform"> 
          
          <div class="displaynone">
        <label>평점</label>
       
      <span class="label-box"><input id="point0" name="point" value="★★★★★" type="radio" checked="checked"/><label for="point0" ><span class="point5"><em>★★★★★</em></span></label>
      <input id="point1" name="point" value="☆★★★★" type="radio"/><label for="point1" ><span class="point4"><em>★★★★</em></span></label>
      <input id="point2" name="point" value="☆☆★★★" type="radio"/><label for="point2" ><span class="point3"><em>★★★</em></span></label>
      <input id="point3" name="point" value="☆☆☆★★" type="radio"/><label for="point3" ><span class="point2"><em>★★</em></span></label>
      <input id="point4" name="point" value="☆☆☆☆★" type="radio"/><label for="point4" ><span class="point1"><em>★</em></span></label></span>
      </div>
      <br>
      <div class="review">
	      <textarea name = "review" rows="10" cols="100" id="ta" style="resize: none; width:90%;"></textarea><br>
	      
	      <br>
	      <input type="submit" value = "등록"> &nbsp;
	      <input type="reset" value="취소">
      </div>
       </form>
      <br>
      
     
      
      </div>
   
		</div>
	</div>
	
		<div class="footer">
		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
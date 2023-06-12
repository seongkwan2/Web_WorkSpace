<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WelCome to Fun Web</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
</head>
<body>
 <div id="wrap">
  <header> <%--JSP 주석문 기호, 브라우저 출력창 페이지 소스보기에서 보이지 않는다. 보안상 좋다.
  			header는 html5에서 추가된 태그로 페이지 상단영역을 지정할 때 사용한다. --%>
  			
  	<%--로그인 부분 + 회원가입 --%>
  	<div id="login">
  	 <a href="#">Login</a> | <a href="#">Join</a>
  	</div>		
  	
  	<div class="clear"></div>
  			
  	<%--회사 로고--%>
  	<div id="logo">
	 <img src="./images/logo.gif" width="265" height="62" alt="Fun Web">  	
  	</div>
  
  	<%-- 상단 메뉴 --%>
  	<nav> <%-- nav태그는 html5에서 추가된 것으로 주로 메뉴구성 할 때 많이 사용 --%>
  	 <ul> <%-- 웹 표준 접근성에서 메뉴구성할 때는 거의 대부분 ul li태그를 사용한다. --%>
  	  <li><a href="index.jsp">HOME</a></li>
  	  <li><a href="#">COMPANY</a></li>
  	  <li><a href="#">SOLUTIONS</a></li>
  	  <li><a href="#">CUSTOMER CENTER</a></li>
  	  <li><a href="#">CONTACT US</a><li>
  	 </ul>
  	</nav>
  </header>
  
  <div class="clear"></div>
  
  <%--메인 이미지--%>
  <div id="main_img">
   <img src="./images/main_img.jpg" width="971" height="282" alt="메인이미지">
  </div>
  
  <%--메인 본문 --%>
  <article id = "main_cont"> <%-- article태그는 html5에서 추가된 것으로 본문내용을 구성할때 주로 사용 --%>
  	<div id="solution">
  	 <div id="hosting">
  	  <h3>Web Hosting</h3>
  	   <p>Lorem ...Ut vel est</p>
  	   <p>Lorem ...Ut vel est</p>
  	   <p>Lorem ...Ut vel est</p>
  	   <p>Lorem ...Ut vel est</p>
  	 </div>
  	 
  	 <div id="security">
  	  <h3>Web Security Solution</h3>
  	  <p>Lorem ...Ut vel est</p>
  	  <p>Lorem ...Ut vel est</p>
  	  <p>Lorem ...Ut vel est</p>
  	  <p>Lorem ...Ut vel est</p>
  	 </div>
  	 
  	 <div id="payment">
  	  <h3>Web payment Solution</h3>
  	  <p>Lorem ...Ut vel est</p>
  	  <p>Lorem ...Ut vel est</p>
  	  <p>Lorem ...Ut vel est</p>
  	  <p>Lorem ...Ut vel est</p>
  	 </div>
  	</div>
  	
  	<div class="clear"></div>
  	
  	<div id="sec_news">
  	 <h3><span class="orange">Security</span>News</h3>
  	 <dl><%-- dl태그는 정의리스트 --%>
  	  <dt><a href="#">Vivamus is ligula...</a></dt> <%--dt는 제목 --%>
  	  <dd><a href="#">Proin quis ante ....</a></dd> <%--dd는 내용(설명) --%>
  	  <dt><a href="#">Vivamus is ligula...</a></dt>
  	  <dd><a href="#">Proin quis ante ....</a></dd>
  	 </dl>
  	</div>
  	
  	<div id="news_notice">
  	 <h3 class="brown">News &amp; Notice</h3> <%-- &amp;은 특수문자로 &로 표시됨 --%>
  	 <table>
  	  <tr>
  	   <td class="contxt"><a href="#">Vivamus ....</a></td>
  	   <td><a href="#">2023.06.14</a></td>
  	  </tr>
  	  <tr>
  	   <td class="contxt"><a href="#">Vivamus ....</a></td>
  	   <td><a href="#">2023.06.14</a></td>
  	  </tr>
  	  <tr>
  	   <td class="contxt"><a href="#">Vivamus ....</a></td>
  	   <td><a href="#">2023.06.14</a></td>
  	  </tr>
  	  <tr>
  	   <td class="contxt"><a href="#">Vivamus ....</a></td>
  	   <td><a href="#">2023.06.14</a></td>
  	  </tr>
  	  <tr>
  	   <td class="contxt"><a href="#">Vivamus ....</a></td>
  	   <td><a href="#">2023.06.14</a></td>
  	  </tr>
  	 
  	 </table>
  	</div>
  </article>
  
  <div class="clear"></div>
  
  <%--하단 영역 --%>
  <footer> <%--footer 태그도 html5에서 추가된 것으로 하단 영역을 지정할 때 사용한다. --%>
   <hr>
   <div id="copy">
    All contents Copyright 2023 FunWeb Inc. all rights reserved<br>
    Contact mail : funweb@funwebbiz.com Tel:+82 64 123 4315 Fax +82 64 123 4321
   </div>
   
   <div id="social">
    <img src="./images/facebook.gif" width="33" height="33" alt="Facebook">
    <img src="./images/twitter.gif" width="33" height="33" alt="Twitter">
   </div>
  </footer>
 </div>
</body>
</html>



















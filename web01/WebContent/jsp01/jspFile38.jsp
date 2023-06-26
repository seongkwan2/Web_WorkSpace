<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>include 디렉티브</h3>
	<%
	 int number = 10;
	%>
	<%@ include file = "included.jspf" %>	<%--포함되어질 파일 확장자에 .jspf로 하면 소스코드 조각파일이라는 의미이다.
																			물론 확장자를 .jsp로 해도 된다. --%>
																			
	<%--공통변수 dataFolder : <%=dataFolder %>	--%>	<%--코드엔 문제가없는데 오류떠서 주석처리 했음 --%>											
	
</body>
</html>
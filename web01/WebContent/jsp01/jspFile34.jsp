<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" %>
<%@ page errorPage = "/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>버퍼 1kb를 다 채우고 비우면 예외가 발생</h3>
<%
	for(int i=1; i<=300; i++){
		out.println("&nbsp;"+i);	//&nbsp; 특수문자는 한칸의 빈공백을 처리
	}
%>
<hr>
<%=8/0%> <%--자바에서 정수숫자를 0으로 나누면 예외 오류가 발생--%>
</body>
</html>
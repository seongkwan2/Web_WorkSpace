<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" autoFlush="true" %>
<%--autoFlush 속성값이 true이면 버퍼(임시메모리)가 다차면 자동으로 비워서(플러시:flush) 데이터를 브라우저로 정상출력하고 다시버퍼를 채운다.--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>autoFluch 속성값 true 예제</h2>
	<% for(int i=1; i<1000; i++){
	%>
	&nbsp;1234<%--&nbsp;은 하나의 빈공백을 처리하는 특수문자 --%>
	<%
	}
	%>

</body>
</html>
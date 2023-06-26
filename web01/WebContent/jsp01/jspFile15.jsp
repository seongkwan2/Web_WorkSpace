<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String id = request.getParameter("memberId"); 	//이 소스를 실행할 때 브라우저 주소창에 
													//*.jsp?memberId=abc1234 노출되는 get방식으로 전달해야 한다.
													//이런 방식을 쿼리스트링 방식이라고 한다.
													
	if(id != null && id.equals("abc1234")){ //equals()메서드는 객체주소가 달라도 문자열 내용만 같으면 참
		response.sendRedirect("index.jsp");	//sendRedirect()메서드는 원하는주소 또는 파일로 이동시켜준다.
	}else{
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2 style="color:red;">잘못된 아이디 입니다.</h2>
</body>
</html>
<% } %>

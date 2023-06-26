<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3> try~catch문을 사용한 예외처리</h3>
name 피라미터 값:
	<% try{ %>
	 <%=request.getParameter("name").toUpperCase() %>
	<%}catch(Exception e){%>
	<strong style="color:red;font-size:28;">
	name 피라미터 값이 잘못 되었습니다.
	</strong>
	<%} %>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>NullPointerException 예외 오류 발생</h3>
addr 피라미터 값 : <%=request.getParameter("addr").toLowerCase() %>
<%-- toLoweCase()메서드는 영문 소문자로 변경 --%>
</body>
</html>
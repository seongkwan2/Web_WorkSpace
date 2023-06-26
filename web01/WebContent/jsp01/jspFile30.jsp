<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h3>예외 오류 발생</h3>
 name 피라미터 값 :<%=request.getParameter("name").toUpperCase() %>
 <%-- name피라미터 값이 null인 상태에서 영문대문자로 변경하려다가 예외 오류가 발생 --%>
</body>
</html>

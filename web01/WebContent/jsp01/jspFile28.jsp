<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");	//웹주소창에 노출되는 get방식(쿼리스트링 방식)으로 다음과 같이 값을 전달한다.
													// *.jsp?name=arr01&value=value	&기호로 구분해서
													//name피라미터 이름에 arr01, value01을 각각 담아서 전달한다.

	if(name != null && value != null){
		application.setAttribute(name, value);	//문자열 키이름과 object타입으로 value값을 업캐스팅해서 저장
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>							<%--http://localhost:8026/web01/jsp01/jspFile28.jsp?name=hong&value=value01 --%>
<%if(name != null && value != null){%>
	application객체 속성 설정 : <%=name %> = <%=value %> 
<%}else{ %>				
	application 기본 객체의 속성 설정 안함.
<%} %>
</body>
</html>
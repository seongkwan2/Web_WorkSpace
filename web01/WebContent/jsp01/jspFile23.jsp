<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h3>web.xml에 설정된 초기화 피라미터 읽어오기</h3>
 초기화 피라미터 목록:
 <ul>
 	<%
 	Enumeration<String> initParamEnum = application.getInitParameterNames();
 	//피라미터 목록을 Enumeration타입으로 반환한다.
 	while(initParamEnum.hasMoreElements()){
 		String initParamNames = initParamEnum.nextElement(); //피라미터 이름을 구함	
 	%>
 		<li>
 		<%=initParamNames%> <%=application.getInitParameter(initParamNames) %>
 		<%-- getInitParameter(String name); 메서드는 피라미터 이름에 해당하는 초기화 피라미터 값을 구한다.
 			해당값이 없다면 null을 반환한다. --%>
 		</li>
 	<%}%>
 
 </ul>
</body>
</html>
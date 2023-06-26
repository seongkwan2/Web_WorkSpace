<%@ page contentType="text/html; charset=UTF-8"%>
body_sub.jsp 에서 name 피라미터 값 : <%=request.getParameter("name")%>
<br>
name피라미터 값 목록 :
<ul>
 <%
  String[] names = request.getParameterValues("name");	//복수개의 name 피라미터 값을 문자열 배열로 받아서 처리한다.
  
  /*
	1. jsp:param태그는 이미 동일한 name 피라미터 값이 존재하면 기존 피라미터 값을 유지한 채 새로운 값을 추가한다.
	2. get으로 전달된 피라미터 값 보다는 jsp:param태그에 의해서 전달되어지는 피라미터 값이 우선한다. 
  */
  for(String name:names){//jdk 1.5버전에서 추가된 향상된 확장 for반복문 => 배열이나 컬렉션에 저장된 복수개의 원소값을 쉽게 읽어오는 용도로 활용된다.
 %>
 	<li><%=name %></li>
 	<%} %>
</ul>
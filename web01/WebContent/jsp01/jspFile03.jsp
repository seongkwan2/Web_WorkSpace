<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%-- %@ page import 속성을 사용해서 외부 패키지 api를 임포트 즉 읽어들인다. --%>

<%
	Date today = new Date(); //today 날짜 객체 생성
	
	out.println("<h1>현재 날짜 시간값="+ today +"</h1>");
%>
<h1>현재 날짜시간값 출력 =<%=today%></h1>
<%-- <%=은 스크립트 요소에서 표현식으로 출력용도로 활용된다. --%>


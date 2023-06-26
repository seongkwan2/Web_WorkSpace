<%@ page contentType="text/html; charset=UTF-8"%>
<%--
 문제) page improt 속성을 사용해서 java.util.*를 임포트 하고 추상클래스인 캘린더를 사용해서 년월일 시분초 값을
 		out.println()과 <%=표현식을 사용해서 출력해보자.
--%>
<%@ page import="java.util.*" %>
<%
  Calendar cal = Calendar.getInstance();	//캘린더는 추상클래스로 new키워드 연산으로 객체 생성을 못한다. 
  int year = cal.get(Calendar.YEAR);		//년원일시분초 값을 반환할때 주로 사용한다.
  int month = cal.get(Calendar.MONTH) + 1; 	// 월은 0부터 시작하므로 1을 더한다.
  int day = cal.get(Calendar.DAY_OF_MONTH);
  int hour = cal.get(Calendar.HOUR_OF_DAY);
  int minute = cal.get(Calendar.MINUTE);
  int second = cal.get(Calendar.SECOND);
%>

<%-- 출력 방법 1: out.println() --%>
<%
  out.print("<h3>"+year+"년 "+month+"월 "+day+"일 "+hour+"시 "+minute+"분 "+second+"초"+"</h3>");
%>

<%-- 출력 방법 2: <%= 표현식 --%>
<h3><%= year%>년 <%= month%>월 <%= day%>일 <%= hour%>시 <%= minute%>분 <%= second%>초</h3>

















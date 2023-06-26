<%@ page contentType="text/html; charset=UTF-8"%>
<%--
	문제) jsp 스크립트릿 문법을 활용해서 아이디,비번,회원이름,폰번호,이메일 주소를 가져와서 
		표현식과 out.println()을 사용해서 가져온 값을 출력해보고,
		input type="button"을 활용해서 자바스크립트 location객체로 jspForm13.jsp로 이동되게 만들어본다.
--%>

<%--여러가지 방법으로 표현 --%>
<%
 request.setCharacterEncoding("UTF-8");
 String mId = request.getParameter("mem_id");		//변수에 저장후 out.println()으로 출력하기
 out.println("아이디: "+mId+"<hr>");
 %>
비밀번호 : <%=request.getParameter("mem_pwd")%><hr>	<%--request.getParameter()이용해서 바로 불러오기 --%>
<%
String mName = request.getParameter("mem_name");	//변수에 저장후
%>													<%--변수를 출력하기--%>
회원이름: <%=mName %><hr>	
폰번호: <%=request.getParameter("mem_phone") %><hr>
이메일: <%=request.getParameter("mem_email") %><hr>
<input type ="button" value="회원가입" onclick="location='jspForm13.jsp';" >
											<%-- location객체를 이용해서 출력하기--%>
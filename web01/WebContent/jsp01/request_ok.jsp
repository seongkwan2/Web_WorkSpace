<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");	//post로 전송되는 한글을 안깨지게 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h2>피라미터 이름에 실려온 값 받기</h2>
	<h3>request.getParameter() 메서드 사용</h3>
	name 피라미터 값 : <%=request.getParameter("name") %> <hr>
	<%-- name피라미터 이름에 담겨져서 전달된 이름을 가져와서 표현식으로 출력 --%>
	<%
		String addr = request.getParameter("address");
		out.println("address 피라미터 값="+ addr +"<hr>");
	%>
	<h3>request.getParameterValues() 메서드 사용</h3>
	<%
		String[] values = request.getParameterValues("pet"); //checkbox는 복수개의 피라미터값이 전달되기 때문에
															 //문자열 배열로 받아서 처리한다.
		if((values != null)&&(values.length>0)){
			//문제) 좋아하는 동물을 일반 for반복문과 향상된 확장 for 반복문을 사용해서 각각 출력해보자

			//일반 for 반복문
			for(int i=0; i<values.length; i++){	//i<values.length; i는 length보다 작게할것
				out.println(values[i]+ " ");
			}
			out.println("<hr>");
			
			//향상된 확장 for
			for(String s : values){
				out.println (s+" ");
			}
			
		}else{
			out.println("좋아하는 동물이 없습니다!");
		}
	%>
	<h3>request.getParameterNames() 메서드 사용</h3>
	<%
		Enumeration paramEnum = request.getParameterNames();	//피라미터 이름을 구함
		/* getParameterNames()메서드는 피라미터 이름을 java.util패키지의 Enumeration 타입으로 구한다.
			이 타입은 jdk1.0에서 추가되었고 컬렉션 원소값을 쉽게 읽어오는 용도로 활용된다.
		*/
		//파라미터 이름을 구하기 위한 반복문
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
			out.println(name+" ");
		}
	%>
</body>
</html>























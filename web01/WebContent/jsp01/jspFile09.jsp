<%@ page contentType="text/html; charset=UTF-8"%>
 <%!
	public int add(int a, int b){
		return a + b;
	} 
	
	public int subtract(int a, int b){
		int result = a - b;
		return result;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h2>스크립트 요소의 선언문과 스크립트 릿 활용하기</h2>
 <%
	 	int value01=3;
		int value02=9;
 	/*
 	문제) 선언문에서 public int add(int a, int b){}를 선언해서 value01과 value02에 저장된 값을 활용하여 
	두 정수의 합을 구한다음 반환받아 표현식으로 출력해보자
	
	문제2) 선언문에서 public int subtract(int a, int b){}를 선언해서 value01과 value02에 저장된 값을 활용하여 
	두 정수의 뺄셈을 구한다음 반환받아 표현식으로 출력해보자
 	*/
 	int addResult = add(value01, value02);
 	int subResult = subtract(value01, value02);
 %>

 	<h3><%=value01%> + <%=value02%> = <%=addResult%></h3>
 	<h3><%=value01%> - <%=value02%> = <%=subResult%></h3>
</body>
</html>


















<%@ page contentType="text/html; charset=UTF-8"%>
<%
	//이 영역을 jsp스크립트 요소에서 스크립트 릿 이라고 한다. 스크립트 릿에서는 자바 문법을 따라간다.
	/*
	한줄이상 주석문 기호
	
	*/
	String bookTitle="Jsp 서버 웹 프로그래밍";
	String author = "홍길동";
	
	System.out.println("책제목:"+bookTitle);	//System.out.println()에서 ln은 줄바꿈을 의미
	System.out.println("저자명:"+author);
	
	out.println("<hr>");
	out.println("책제목:<strong>"+bookTitle+"</strong>");	//out은 출력스트림 JSP내장객체이다.
														//주로 출력용도로 사용된다.
	out.println("<br>");														
	out.println("저자 이름:<b style='font-size:32px;'>"+author+"</b>");
	out.println("<hr>");					//out.println()에서 ln은 줄바꿈을 의미하지 않는다.
	
	%>
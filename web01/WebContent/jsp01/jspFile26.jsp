<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h3>application JSP 내장객체 하위의 메서드를 활용해서 notice.txt파일을 읽어오기</h3>
 <%
 	String path = "/jsp01/message/notice.txt";
 %>
 자원의 실제 경로: <br>
 <%=application.getRealPath(path) %>
 <%-- D:\KGITBANK\sw\Web_WorkSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\web01\jsp01\message\notice.txt --%>
 <hr>
 <%=path%>의 내용:<br>
 <%
 	char[] buf = new char[128];
 	int len = -1;
 	
 	try(InputStreamReader br = new InputStreamReader(application.getResourceAsStream(path),
 			"UTF-8")){
 		//getResourceAsStream() 메서드는 지정한 경로에 해당하는 자원으로 부터 자료를 읽어올 수 있는 InputStream을 반환한다.
 		while((len = br.read(buf)) != -1){
 			out.println(new String(buf,0,len));
 		}//while
 	}catch(IOException ie){
 		out.println("예외 발생:"+ie.getMessage()); //예외 에러 메시지 출력
 	}
 %>
</body>
</html>
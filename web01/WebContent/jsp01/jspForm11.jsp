<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h2>폼 입력 필드 연습</h2>
 <form method="post" action="request_ok.jsp">
 이름 : <input type ="text" name="name" size="14"><br><br>
 주소 : <input type ="text" name="address" size="34"><br><br>
 좋아하는 동물:
 	<input type = "checkbox" name="pet" value="Dog">강아지
 	<%--
 		1. checkbox는 네모 버튼을 만들고 하나이상 복수개 선택이 가능하다. pet 네임피라미터 이름에 value속성값인
 		Dog가 저장되어 서버로 데이터가 전송된다.
 	 --%>
 	 <input type = "checkbox" name="pet" value="pig">돼지
 	 <input type = "checkbox" name="pet" value="Cat" checked>고양이
 	 											<%--checked를 선택하면 미리 선택된다. --%>
 	 <hr>
 	 
 <input type="submit" value="전송">
 <input type="reset" value="취소">
 </form>
</body>
</html>


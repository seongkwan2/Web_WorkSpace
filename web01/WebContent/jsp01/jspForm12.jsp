<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery.js"></script>
<script type="text/javascript">


 	function guest_check(){						//function 키워드로 guest_book()함수 정의
 		$gName = $.trim($('#gName').val());	//trim()함수는 양쪽 공백을 제거, 글쓴이를 저장 val() = get이라고 보면됨
 		if($gName.length == 0){
 			window.alert('글쓴이를 입력하세요!');	//window.은 생략가능함
 			$('#gName').val(''); 				//글쓴이 입력필드를 초기화
 			$('#gName').focus(); 				//글쓴이 입력필드로 포커스 이동
 			return false; 						//이벤트 종료
 		}
 		
 		
	 	$gTitle = $.trim($('#gTitle').val());
	 	if($gTitle == ''){
	 		//alert('글제목을 입력하세요!');
	 		$('.gTitle').html("<strong style='color:red;font-size:10px;'>"+
 			"방명록 글제목을 입력해 주세요!</strong>");
	 		$('#gTitle').val('').focus();
	 		return false;
	 	}
	 	
	 	
	 	if($.trim($('#gCont').val()).length == 0){
	 		alert('방명록 글내용을 입력하세요!');
	 		$('#gCont').val('').focus();
	 		return false;
	 	}

}
</script>
</head>
<body>
 <h2>방명록 입력폼 유효성 검증 연습(Validate)</h2>
	<%
	//문제) table표테이블 사용하지 말고 입력폼 3개를 만들어서 유효성 검증 메시지를 띄우게 해보자.
	//		글제목을 입력하세요! 라는 유효성 검증 메시지가 경고창으로 띄워지고 있는데 이부분을 주석처리하고
	//		적절한 jQuery함수를 사용해서 글제목 입력필드 밑에 빨간색 문자로 다음과 같은 유효성 검증 메시지를 띄워보게 만든다.
	//		'방명록 글제목을 입력해 주세요!'
		
	%>

	<form action="guest_ok.jsp" method="post" onsubmit="return guest_check();">
	글쓴이 : <input type ="text" name="gName" id="gName" size="14"><br><br>
	글제목 : <input type ="text" name="gTitle" id="gTitle" size="32"><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="gTitle"><%--여기에 유효성 검증 메시지가 출력된다.--%></span>
	<br><br>
	방명록 : <textarea rows="3" name="gCont" cols="50" id="gCont"></textarea><br><br>
	<input type="submit" value="전송">
	<input type="reset" value="취소">
	</form>
	

</body>
</html>

























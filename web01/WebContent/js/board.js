/*
 board.js
 */

function check(){//function 키워드로 check()라는 함수 정의
	 
	 	if($.trim($("#bname").val())==""){
	 		alert("글쓴이를 입력하세요!");
	 		$('#bname').val("").focus();
	 		return false;
	 	}
	 	
	 	if($.trim($("#btitle").val())==""){
	 		alert("글제목을 입력하세요!");
	 		$('#btitle').val("").focus();
	 		return false;
	 	}
	 	
	 	if($.trim($("#bcont").val())==""){
	 		alert("글내용을 입력하세요!");
	 		$('#bcont').val("").focus();
	 		return false;
	 }
}
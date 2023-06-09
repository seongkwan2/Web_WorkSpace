<%@ page contentType="text/html; charset=UTF-8"%>
<%--
	문제) 1. 게시판 글쓴이 , 글제목, 글내용만 입력할 수 있는 입력폼을 만들고, 각 입력폼이 제대로 입력되지 않았을 떄
			자바스크립트와 jQuery를 활용해서 유효성 검증 메세지도 띄우는 borad_write.jsp를 작성	★
			
		 2. 게시판 저장 테이블 boardT7 을 생성한다. 컬럼으로는 다음과 같이 구성한다.	★
		 
		 	컬럼명 		자료형 		크기 		제약조건		컬럼에 대한 설명
		 	 bno		number		38		기본키		게시판번호(bno_seq 시퀀스로 부터 번호값을 가져온다.)
		 	 bname		varchar2 	30		not null	글쓴이 
		 	 btitle		varchar2	200		not null	글제목
		 	 bcont		varchar2	4000	not null	글내용
		 	 bhit		int					default 0 	조회수
		 	 bdate		date				default sysdate 등록날짜
		 
		 3. bno_seq 라는 시퀀스를 생성한다. 시퀀스는 1부터 시작하고, 1씩 증가하고, 임시메모리를 사용하지 않게 한다.	★
		 
		 4. 게시판이 저장되는 board_write_ok.jsp를 작성한다.	★
		 
		 5. 게시판 목록은 board_list.jsp로 작성을 하는데 총 게시물 수가 제목위에 출력되게 만들어 본다.	★
		 
		 6. 게시판 조회수 증가와 내용보기가 되게 board_cont.jsp를 작성한다.		★
		 
		 7. 게시판 수정폼 board_edit.jsp를 작성하고, 수정완료 되게 board_edit_ok.jsp를 작성한다.	★
		 	(게시판 수정완료에서 비번이같다/다르다 코드는 없다)
		 
		 8.board_cont.jsp 하단의 삭제 버튼을 누르면 번호를 기준으로 바로 삭제되게 board_del.jsp를 작성한다.
		 	삭제되기전에 자바스크립트의 삭제 유무를 한번 더 판단하게 confirm()내장함수를 사용해서 다시 한번 더 신중하게 삭제 유무 인지를 판단하게 한다.	 	★	 
 --%> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
<script src="../js/jquery.js"></script>
<script src="../js/board.js"></script>

</head>
<body>
	<form method="post" action="board_write_ok.jsp" onsubmit="return check();">

		<table border="1">

			<tr>
				<th colspan="2">게시판</th> <%--행 합치기 colspan --%>
			</tr>

			<tr>
				<th>글쓴이</th>
				<td><input name="bname" id="bname" size="14"></td>
			</tr>

			<tr>
				<th>글제목</th>
				<td><input name="btitle" id="btitle"></td>
			</tr>

			<tr>
				<th>글내용</th>
				<td><textarea name="bcont" id="bcont" rows="10" cols="36"
						size="14"></textarea></td>
			</tr>

			<tr>
				<th colspan="2">
				<input type="submit" value="저장">
				<input type="reset" value="취소" onclick="$('#bname').focus();">
				</th>
			</tr>
			
		</table>
	</form>
</body>
</html>








































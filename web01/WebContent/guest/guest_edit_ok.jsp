<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");	//post 한글깨짐방지
	
	int no = Integer.parseInt(request.getParameter("gno"));		//gno를 정수형으로 바꿔서 변수 no에 저장시킴
	String gname = request.getParameter("gname");	//수정할 이름
	String gtitle = request.getParameter("gtitle");	//수정할 제목
	String gpwd = request.getParameter("gpwd");		//비번
	String gcont = request.getParameter("gcont");	//수정할 내용
	
	String driver = "oracle.jdbc.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="day";
	String password="day";
	
	Connection con = null;			//데이터 베이스 연결 con
	PreparedStatement pstmt = null;	//쿼리문 수행
	ResultSet rs = null;			//쿼리문 저장
	String sql = null;				//쿼리문 저장 변수
	
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url, user, password);
		sql = "select gpwd from guestbook where gno=?";	//번호를 기준으로 해당테이블 컬럼으로 부터 비번검색
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1,no);
		rs=pstmt.executeQuery();
		if(rs.next()){	//비번이 있는 경우 실행
			if(!rs.getString("gpwd").equals(gpwd)){	//비번이 다르면
				out.println("<script>");
				out.println("alert('비번이 다릅니다!');");
				out.println("history.back();");	//뒤로 한칸이동
				out.println("</script>");
			}
				else {
					    /* 문제) 비번이 같으면 번호를 기준으로 글쓴이, 글제목, 글내용만 수정되게 update 쿼리문 수행 후 리턴값 1을 받아서
					    if 조건문으로 '방명록 수정되었습니다'; 라는 alert() 경고창을 띄운 다음 방명록 목록보기로 이동되게 만들자. */
					    sql = "update guestbook set gname=?, gtitle=?, gcont=? where gno=?";
					    pstmt = con.prepareStatement(sql);
					    pstmt.setString(1, gname);	//쿼리문의 첫번째 물음표에 문자열로 수정할 글쓴이를 저장
					    pstmt.setString(2, gtitle);
					    pstmt.setString(3, gcont);
					    pstmt.setInt(4, no);
					    int re = pstmt.executeUpdate(); // update 문 수행 후 영향 받은 레코드의 개수를 반환
					    if (re == 1) {
					        out.println("<script>");
					        out.println("alert('방명록 수정되었습니다.');");
					        out.println("location='guest_list.jsp';"); // 방명록 목록보기 페이지로 이동
					        out.println("</script>");
					}
				}
			}
		
	}catch(Exception e){e.printStackTrace();}
	finally{
		try{
			if(rs != null) rs.close();		
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
		}catch(Exception e){e.printStackTrace();}
	}
%>























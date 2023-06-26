<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
	/*문제) 비번이 같으면 삭제되게 하고, 비번이 다르면 alert('비번이 다릅니다!'); 라고 경고창을 띄우고 history.go(-1)을 사용해서 뒤로 한칸 이동한다.
		이것은 history.back()과 같은 기능이다.
		delete삭제 쿼리문 수행 후 성공한 레코드 행의 개수 1을 리턴받아서 if조건문으로 처리해서 jsp내장객체인
		response.sendRedirect("guest_list.jsp")로 이동되게 만든다.
		참조한 소스 파일은 guest_edit_ok.jsp이다. */
		
		request.setCharacterEncoding("UTF-8");	//post 한글깨짐방지
		
		int no = Integer.parseInt(request.getParameter("no"));		//gno를 정수형으로 바꿔서 변수 no에 저장시킴
		String del_pwd = request.getParameter("del_pwd");			//비번
		
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
				if(!rs.getString("del_pwd").equals(del_pwd)){	//비번이 다르면
					out.println("<script>");
					out.println("alert('비번이 다릅니다!');");
					out.println("history.go(-1);");	//뒤로 한칸이동
					out.println("</script>");
				}
					else {
						    sql = "delete from guestbook where gno=?";
						    pstmt=con.prepareStatement(sql);
						    pstmt.setInt(1,no);
						    
						    int re = pstmt.executeUpdate();
						    
						    if(re==1){
						    	response.sendRedirect("guest_list.jsp");	//이동
						}
					}//if else
				}//if
		}catch(Exception e){e.printStackTrace();}
		finally{
			try{
				if(rs != null) rs.close();		
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e){e.printStackTrace();}
		}
%>



























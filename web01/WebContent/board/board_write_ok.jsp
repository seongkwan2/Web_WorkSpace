<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
  request.setCharacterEncoding("UTF-8");

  String bname = request.getParameter("bname");
  String btitle = request.getParameter("btitle");
  String bcont = request.getParameter("bcont");

  // 데이터베이스 연결 정보 설정
  String driver = "oracle.jdbc.OracleDriver";
  String url = "jdbc:oracle:thin:@localhost:1521:xe";
  String user = "day";
  String password = "day";

  Connection con = null;
  PreparedStatement pstmt = null;
  String sql = null;

  try {
    Class.forName(driver);
    con = DriverManager.getConnection(url, user, password);

    sql = "INSERT INTO boardT7 (bno, bname, btitle, bcont, bdate) VALUES (bno_seq.nextval, ?, ?, ?, sysdate)";

    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, bname);
    pstmt.setString(2, btitle);
    pstmt.setString(3, bcont);

    int re = pstmt.executeUpdate();

    if (re == 1) {
      out.println("<script>");
      out.println("alert('방명록 저장에 성공했습니다!');");
      out.println("location='board_list.jsp';");
      out.println("</script>");
    }
  } catch (Exception e) {
    e.printStackTrace();
  } finally {
    try {
      if (pstmt != null) pstmt.close();
      if (con != null) con.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
%>

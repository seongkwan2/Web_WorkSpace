<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%

  // 데이터베이스 연결 정보 설정
  String driver = "oracle.jdbc.OracleDriver";
  String url="jdbc:oracle:thin:@localhost:1521:xe";
  String user="day";
  String password="day";

  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String sql = null;

  try{
    Class.forName(driver);
    con=DriverManager.getConnection(url, user, password);
    int bno = Integer.parseInt(request.getParameter("bno")); // 파라미터로 전달된 게시글 번호 가져오기
    String btitle = request.getParameter("btitle");
    String bname = request.getParameter("bname");
    String bcont = request.getParameter("bcont");

    // 게시글 수정
    sql = "UPDATE boardT7 SET btitle = ?, bname = ?, bcont = ? WHERE bno = ?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, btitle);
    pstmt.setString(2, bname);
    pstmt.setString(3, bcont);
    pstmt.setInt(4, bno);
    pstmt.executeUpdate();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 완료</title>
<script src="../js/jquery.js"></script>
<script src="../js/board.js"></script>
</head>
<body>
  <h2>게시글 수정이 완료되었습니다.</h2>
  <br>
  <a href="board_cont.jsp?no=<%= bno %>">수정된 게시글 보러가기</a>
  <br>
  <a href="board_list.jsp">목록으로</a>
</body>
</html>
<% } catch(Exception e) {
  e.printStackTrace();
} finally {
  try {
    if(pstmt != null) pstmt.close();
    if(con != null) con.close();
  } catch(Exception e) {
    e.printStackTrace();
  }
}
%>

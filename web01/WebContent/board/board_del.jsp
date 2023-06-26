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
  String sql = null;

  try{
    Class.forName(driver);
    con=DriverManager.getConnection(url, user, password);
    int bno = Integer.parseInt(request.getParameter("no")); // 파라미터로 전달된 게시글 번호 가져오기

    // 게시글 삭제
    sql = "DELETE FROM boardT7 WHERE bno = ?";
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, bno);
    pstmt.executeUpdate();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제 완료</title>
<script src="../js/jquery.js"></script>
<script src="../js/board.js"></script>
</head>
<body>
  <h2>게시글 삭제가 완료되었습니다.</h2>
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

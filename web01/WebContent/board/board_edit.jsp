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
    int bno = Integer.parseInt(request.getParameter("no")); // 파라미터로 전달된 게시글 번호 가져오기

    // 게시글 내용 조회
    sql = "SELECT * FROM boardT7 WHERE bno = ?";
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, bno);
    rs = pstmt.executeQuery();
    String btitle = "";
    String bname = "";
    String bcont = "";
    if (rs.next()) {
      btitle = rs.getString("btitle");
      bname = rs.getString("bname");
      bcont = rs.getString("bcont");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<script src="../js/jquery.js"></script>
<script src="../js/board.js"></script>
</head>
<body>
  <h2>게시글 수정</h2>
  <form action="board_edit_ok.jsp" method="post" name="editForm">
    <input type="hidden" name="bno" value="<%= bno %>">
    <table>
      <tr>
        <td>글제목</td>
        <td><input type="text" name="btitle" value="<%= btitle %>" required></td>
      </tr>
      <tr>
        <td>글쓴이</td>
        <td><input type="text" name="bname" value="<%= bname %>" required></td>
      </tr>
      <tr>
        <td>글내용</td>
        <td><textarea name="bcont" rows="5" cols="50" required><%= bcont %></textarea></td>
      </tr>
    </table>
    <br>
    <input type="submit" value="수정 완료">
  </form>
  <br>
  <a href="board_list.jsp">목록으로</a>
</body>
</html>
<% } catch(Exception e) {
  e.printStackTrace();
} finally {
  try {
    if(rs != null) rs.close();
    if(pstmt != null) pstmt.close();
    if(con != null) con.close();
  } catch(Exception e) {
    e.printStackTrace();
  }
}
%>

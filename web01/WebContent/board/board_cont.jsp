<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%

	request.setCharacterEncoding("UTF-8");

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
    int bno = Integer.parseInt(request.getParameter("no")); 	//bno변수에 게시물번호 저장

    // 게시글 조회수 증가
    sql = "UPDATE boardT7 SET bhit = bhit + 1 WHERE bno = ?";	//해당페이지를 들어올때마다 bhit가 1씩 증가
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, bno);
    pstmt.executeUpdate();

    // 게시글 내용 조회
    sql = "SELECT * FROM boardT7 WHERE bno = ?";
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, bno);		//저장해놓은 게시물 번호를 사용
    rs = pstmt.executeQuery();
    String btitle = "";
    String bname = "";
    String bcont = "";
    String bdate = "";
    int bhit = 0;
    if (rs.next()) {
      btitle = rs.getString("btitle");
      bname = rs.getString("bname");
      bcont = rs.getString("bcont");
      bdate = rs.getString("bdate");
      bhit = rs.getInt("bhit");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 내용</title>
</head>
<body>
  <h2>게시글 내용</h2>
  <table>
    <tr>
      <td>글번호</td>
      <td><%= bno %></td>
    </tr>
    <tr>
      <td>글제목</td>
      <td><%= btitle %></td>
    </tr>
    <tr>
      <td>글쓴이</td>
      <td><%= bname %></td>
    </tr>
    <tr>
      <td>조회수</td>
      <td><%= bhit %></td>
    </tr>
    <tr>
      <td>등록날짜</td>
      <td><%= bdate %></td>
    </tr>
    <tr>
      <td>글내용</td>
      <td><%= bcont %></td>
    </tr>
  </table>
  <br>
  <input type="button" value="수정" onclick="location='board_edit.jsp?no=<%= bno %>';">
  <input type="button" value="삭제" onclick="deletePost(<%= bno %>);">
  <br><br>
  <a href="board_list.jsp">목록으로</a>

  <script>
    // 게시글 삭제 확인
    function deletePost(bno) {
      if (confirm("정말로 삭제하시겠습니까?")) {
        location.href = "board_del.jsp?no=" + bno;
      }
    }
  </script>
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

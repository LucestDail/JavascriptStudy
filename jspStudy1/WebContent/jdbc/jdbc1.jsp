<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 1. 사용되는 패키지들은 java.sql 패키지에 속한 클래스를 사용하게 됩니당... --%>
<%--2. 드라이버 설정하기 : Class.forName("드라이버클래스명")
-> 3. 연결객체 생성 : Connection conn = DriverManager.getConnection(..)
4. dbms에 명령 전달 객체 생성 Statement stmt = conn.createStatement();
5. sql 구문이 실행(resultSet rs = stmt.executeQuery("select ......")
db에 등록 -> int cnt = stmt.executeUpdate("insert ......")
--%>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 15:07, jdbc testing source code</title>
</head>
<body>
<%
//드라이버 설정
Class.forName("org.mariadb.jdbc.Driver");

//Connection 생성
Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/classdb","uroot","");
//SQL query 전달 객체 생성
Statement stmt = conn.createStatement();
//SQL query 구문 실행
ResultSet rs = stmt.executeQuery("select * from tables");
while(rs.next()){
%>
<%=rs.getString(1)%>,<%=rs.getString(2) %>,<%=rs.getString(3) %>,<%=rs.getString(4) %><br>
<%
}
%>

</body>
</html>
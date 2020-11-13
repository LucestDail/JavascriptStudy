<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜를 session에 등록하기</title>
</head>
<body>

<form action = "test3.jsp" method="post">
<%
	long creationTime = session.getCreationTime();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E");
	String creationTimeString = dateFormat.format(new Date(creationTime));
	session.setAttribute("time", creationTimeString);
%>
등록된 날짜 : <%=creationTimeString%><br>
<a href = "test3.jsp">
test3.jsp
</a>
</form>
</body>
</html>
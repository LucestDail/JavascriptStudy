<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20201112, 15:51, Request Example for checking transfer
	parameter printing</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	String year = request.getParameter("year");
	%>
	name(이름) : <%=name%><br>
	age(나이) : <%=age%><br>
	gender(성별) : <%=gender.equals("1") ? "male" : "female" %><br>
	hobby(취미) : <%=hobby%><br>
	birth(년도) : <%=year%><br>
</body>
</html>
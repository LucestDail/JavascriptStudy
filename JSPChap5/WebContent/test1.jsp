<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
Double num1 = Double.parseDouble(request.getParameter("num1"));
Double num2 = Double.parseDouble(request.getParameter("num2"));
String kbn = request.getParameter("kbn");
Double result = 0d;
String op = "";
switch (kbn) {
case "0":
	result = num1 + num2;
	op = "+";
	break;
case "1":
	result = num1 - num2;
	op = "-";
	break;
case "2":
	result = num1 * num2;
	op = "*";
	break;
case "3":
	result = num1 / num2;
	op = "/";
	break;
}



%>
</body>
<h1> <%=num1 %> <%=op %> <%=num2 %> = <%=result %></h1>
</html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력된 숫자까지의 합 구하</title>
<%
request.setCharacterEncoding("utf-8");
SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String regdate = date.format(new Date());

String visitorValue = request.getParameter("visitorValue");
String titleValue = request.getParameter("titleValue");
String writingValue = request.getParameter("writingValue");
%>
<style type="text/css">

table, th, td {

    border: 1px solid black;

}

</style>
</head>
<body>
<table><caption>방명록</caption>
<tr>
	<td>방문자</td>
	<td><%=visitorValue%></td>
</tr>
<tr>
	<td>제목</td>
	<td><%=titleValue %></td>
</tr>
<tr>
	<td>내용</td>
	<td><%=writingValue %></td>
</tr>
<tr>
	<td>등록일</td>
	<td><%=regdate %></td>
</tr>
</table>
</body>
</html>
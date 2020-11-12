<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력된 숫자까지의 합 구하</title>
<%
Calendar c = Calendar.getInstance();
int y = c.get(Calendar.YEAR);
int mon = c.get(Calendar.MONTH)+1;
int d = c.get(Calendar.DATE);
int h = c.get(Calendar.HOUR_OF_DAY); //현재 시
int min = c.get(Calendar.MINUTE); // 현재 분
int s = c.get(Calendar.SECOND); // 현재 초
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
	<td><%=y%>-<%=mon%>-<%=d%> <%=h%>:<%=min%>:<%=s%></td>
</tr>
</table>
</body>
</html>
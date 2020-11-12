<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!-- /wWebContent/currentTime.jsp
	1. http://localhost:8080/jasProject/CurrentTime.jsp
	2. was server : CurrentTime.jsp => change to servlet => run compiler => execute => response 
	-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Time</title>
</head>
<body>
<%
Calendar c = Calendar.getInstance();
int h = c.get(Calendar.HOUR_OF_DAY); //현재 시
int m = c.get(Calendar.MINUTE); // 현재 분
int s = c.get(Calendar.SECOND); // 현재 초
%>
<h1> 현재시간은 <%= h%> 시 <%= m%> 분 <%= s%> 초 입니다.</h1>
</body>
</html>
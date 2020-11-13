<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 12:10, Session Example 1</title>
</head>
<body>
<%
	session.setMaxInactiveInterval(10);
	long creationTime = session.getCreationTime();
	long lastAccessedTime = session.getLastAccessedTime();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
	String creationTimeString = dateFormat.format(new Date(creationTime));
	String lastAccessedTimeString = dateFormat.format(new Date(lastAccessedTime));
%>

<h3> Session 정보</h3>
<%-- 클라이언트의 정보를 저장하고 있는 세션! 로그인정보나 기타 등등... --%>
isNew() : <%=session.isNew() %><br><%-- 세션 객체 교체함(인터벌 10초 사이) --%>
생성시간 : <%=creationTimeString%><br><%-- 밀리초 단위... 연월일로 변환 안되나...? --%>
최종접속시간 : <%=lastAccessedTimeString %><br>
세션 아이디 : <%=session.getId() %><br><%-- 세션 고유 아이디 --%>
</body>
</html>
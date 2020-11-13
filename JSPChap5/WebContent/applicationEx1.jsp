<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 14:15, Application Example</title>
</head>
<body>
<h3> application 객체는웹어플리케이션 당 한개의 객체가 제공됩니다.</h3><br>
<h4> 현재 웹 어플리케이션 jspchap5 프로젝트의 jsp 는 하나의 application 객체를 공유합니다.</h4>
<table border="1" style="border-collapse:collapse;">
	<tr><td>JSP 버전</td>
		<td><%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></td></tr>
	<tr>
		<td>웹컨테이너 정보(WAS 서버 정보)</td>
		<td><%=application.getServerInfo() %></td>
	</tr>
	<tr>
		<td>웹어플리케이션 경로</td>
		<td><%= application.getRealPath("/") %></td>
	</tr>
</table>
<% application.setAttribute("testApplication","applicationEx1.jsp 페이지에서 등록한 어플리케이션 속성");
session.setAttribute("testSession","applicationEx1.jsp 페이지에서 등록한 세션 속성");
%>
</body>
</html>
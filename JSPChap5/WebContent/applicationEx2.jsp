<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 14:38, Application Example 2</title>
</head>
<body>
<%= application.getAttribute("testApplication") %><br>
<%= session.getAttribute("testSession") %>
</body>
</html>
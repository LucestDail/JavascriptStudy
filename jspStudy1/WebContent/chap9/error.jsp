<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 13:50, error page source coding</title>
</head>
<body>
<h1> 파라매터 name 입력바람</h1>
<h3> 계속 오류 발생시 전산부로 전화 요망</h3>
<h4> 담당자 : 홍길동, 전화, 1234</h4>
<%= exception.getMessage() %>
<% exception.printStackTrace(response.getWriter()); %>
</body>
</html>
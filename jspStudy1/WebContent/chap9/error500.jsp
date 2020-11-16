<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 14:45, error 500 page</title>
</head>
<body>
<h1> 500 error</h1>
<h2> 뭔가.. 뭔가가일어나고 있음...</h2>
요청된 URL : <%=request.getRequestURL() %> <br>
요청된 URI : <%=request.getRequestURI() %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 14:38, error 404 page</title>
</head>
<body>
<h1> 404 페이지 입니다. 현재 페이지가 없습니다.</h1>
<h2> URL 주소가 올바른지 확인해 주세요...</h2>
요청된 URL : <%=request.getRequestURL() %> <br>
요청된 URI : <%=request.getRequestURI() %>

</body>
</html>
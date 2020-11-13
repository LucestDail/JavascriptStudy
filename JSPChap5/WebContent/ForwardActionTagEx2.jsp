<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 15:50, Forward Action Tag Example 2</title>
</head>
<body>
ForwardActionTagEx1.jsp?test=1234&add=hong
<h3> ForwardActionTagEx1.jsp 으로부터 포워딩된 ForwardActionTagEx2.jsp 페이지입니다...</h3>
test : <%=request.getParameter("test") %><br>
add : <%=request.getParameter("add") %><br>
</body>
</html>
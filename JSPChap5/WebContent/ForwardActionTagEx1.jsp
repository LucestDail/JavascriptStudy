<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 15:50, Forward Action Tag Example 1</title>
</head>
<body>
<h3> 이 페이지는 ForwardActionTagEx2.jsp 로 포워딩됩니당...
파일 내용은 출력되지 않아용...
</h3>
<jsp:forward page = "ForwardActionTagEx2.jsp">
<jsp:param value="****" name="test"/>
<jsp:param value="forwardTest" name="add"/>
</jsp:forward>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage = "error.jsp" %>
    <%-- errorPage = "error.jsp :  현재 페이지에서 오류 발생시 페이지 이동 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 13:46, error form source coding</title>
</head>
<body>
<% int num = Integer.parseInt("abc"); %>

<%= request.getParameter("name").trim() %>
<!-- 오류페이지의 용량이 500바이트 미만인 경우 일부 브라우저에서는 http 오류 페이지를 출력하므로
500바이트 이상이 되도록 오류 페이지를 생성해야 합니다... -->
</body>
</html> 
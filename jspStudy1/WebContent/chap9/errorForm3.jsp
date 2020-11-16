<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 15:01, Error testing page</title>
</head>
<body>
<%= request.getParameter("name").trim() %>
</body>
<%-- error 페이지 설정 시 우선 순위

1. 해당 페이지에서 오류 페이지 설정시
<%@ page errorPage = "error.jsp" %>
2. web.xml 에서 예외클래스별로 설정
<error-page><exception-type>
3. web.xml에서 http 오류코드로 설정
<error-page><error-code>
4. 톰캣(웹컨테이너, 웹어플리케이션 서버)에서 기본으로 제공하는 에러페이지!


 --%>
</html>
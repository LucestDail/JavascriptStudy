<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- Page Directive Example
	<%@page 속성1 = 속성값1
			속성2 = 속성값2 ...
			
			language="java" -> 기본 언
			contentType="text/html; charset=UTF-8" -> 반드시 기술해야함.MIME 타입으로 설정함.
   			pageEncoding="UTF-8" -> 문자의 인코딩 방식을 설정
   			import -> 사용되는 클리스의 패키지 이름을 생략할 수 있도록 설정
   						여러번 사용이 가능
--%>
<html>
<head>
<meta charset="UTF-8">
<title>20201112, 14:11 Page Directive Example 1</title>
</head>
<body>
	<%
		Date today = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	%>
	현재일시 :
	<%=sf.format(today)%>
</body>
</html>
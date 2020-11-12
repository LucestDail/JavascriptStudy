<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 지시어는 다음과 같습니다.
		page 지시어 : 속성을 이용하여 현재 페이지의 특징 설정.
		include 지시어 : 두개의 JSP 페이지를 서블릿단에서 합치는 지시어. 
		taglib 지시어 : 커스텀 태그 생성시 사용되는 지시어, JSTL 병행 사용
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>20201112, 14:46 Include Directive Example1</title>
</head>
<body>
<% String msg = "IncludeDirectiveEx1.jsp 페이지의 String msg 입니다..."; %>
<h1> IncludeDirectiveEx1.jsp 입니다...</h1>
<%@ include file="IncludeDirectiveEx2.jsp" %>
<hr>
<h2>2개의 JSP 페이지는 하나의 서블릿으로 변환되므로 변수 공유가 가능합니다...</h2>
<h3>include Directive(지시어)를 이용하면 다른페이지 포함이 가능합니다...</h3>
</body>
</html>
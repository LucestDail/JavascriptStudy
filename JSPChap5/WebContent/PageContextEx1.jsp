<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 12:04 PageContext Example 1</title>
</head>
<body>
<h2> pageContext 객체 : 현재 페이지의 자원을 관리하는 객체</h2>
<%-- page 영역을 담당하고 있는 객체이므로 속성에 대한 조작이 가능하다.(속성에 대한 메소드를 사용이 가능하며 맴버로 가진다!)
pageContext.setAttribute("속성명") => 해당 속성을 만듬.
pageContext.getAttribute("속성명") => Object 타입으로 속성값을 반환
pageContext.removeAttribute("속성명") => 해당 속성명을 지워버림...
--%>
<%
	if(request == pageContext.getRequest()){
%>
request 객체와 pageContext.getRequest() 가 리턴한 객체는 같은 객체임<br>
<%
	}
%>
<%
	if(response== pageContext.getResponse()){
%>
response 객체와 pageContext.getResponse() 가 리턴한 객체는 같은 객체임<br>
<%
	}
%>
<%
	if(session == pageContext.getSession()){
%>
session 객체와 pageContext.getSession() 가 리턴한 객체는 같은 객체임<br>
<%
	}

%>
</body>
</html>
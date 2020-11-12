<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20201112, 13:49 Comment Example 1</title>
</head>
<%
 String msg = "JSP 주섹 예제입니당";
%>
<body>
<h1> JSP 페이지에서 사용되는 주석</h1>
<ol>
<li> JSP 주석 : &lt; %-- JSP 주석 표현 --%&gt;</li>
<%--JSP 주석입니. JSP 페이지에서만 보여집니다.
서블릿 변환시 제외되는 부분입니다. 변환된 서블릿에서는 볼 수 없습니다... 
--%>
<li>
Java 주석 : &lt;% // Java 주석 표현 %&gt;
</li>
<%
// 바 한줄 주석입니다.
/*
자바 복수줄 주석입니다. 자바 주석은 서블릿이 컴파일될때 주석이 자바처리되므로 서블릿페이지에서 볼 수 있습니당...
*/
%>
<li> HTML 주석 : &lt;!-- // HTML 주석표현 --&gt;</li>
<!-- html 주석표현입니다. jsp 페이지나 서블릿에서의 주석이 아닙니다.
브라우저 소스보기로 볼 수 있고, 브라우저가 실행시에 주석으로 인식합니당.
<%=msg %> -->
</ol>
</body>
</html>
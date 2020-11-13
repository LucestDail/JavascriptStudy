<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- config 는 서블릿에서 제대로 해봅시다...
config 객체는서블릿의 환경변수값을 설정하기 위한 객체입니다...
간단하게 종합 정리
JSP 의 Implicit 객체 정리(우선 순위)
1. request : 요청 객체
2. response : 응답 객체
3. session : 브라우저 정보 객체
4. pageContext : 현재 페이지정보 저
5. application : 웹 어플리케이션 정보 저
6. page : this(브라우저 자체)
7. out : 출력버퍼, 데이터 전송을 위한 출력 스트
8. config : 서블릿 환경 변수 저장
9. exception : 예외 처


영역담당 객체
Page 영역 : pageContext
request 영역 : request
session 영역 : session
application 영역 : application

=> 속성
setAttribute(String, Object)
Object getAttribute(String)
removeAttribute(String)
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 15:04, Configuration, Page Implicit Object Example</title>
</head>
<body>
<%
	Enumeration e = config.getInitParameterNames();
	while(e.hasMoreElements()){
		String s = (String) e.nextElement();
		out.println(s + "=" + config.getInitParameter(s) + "<br>");
	}
%>
<hr>
<%
	if(page == this){
		out.println("page 객체와 this 객체는 같은 객체입니다...");
	}


%>
</body>
</html>
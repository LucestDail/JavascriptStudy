<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- JSP 주요한 4가지의 각 객체에 관련해서
1. page 영역 : pageContext 객체
2. request 영역 : request 객체
3. session 영역 : session 객체
4. application 영역 : application 객체
-> 각 영역마다 내부객체들과 이름이 같다!
속성 관련 기능이며 이러한 속석을 등록, 삭제가 가능합니다!
setAttribute
getAttribute
removeAttribute
페 - 리 - 세 - 어
모든 웹이라는 환경은 이러한 개념을 다 가지고 있다.

다시 한번 정리하자면
리다이렉트 : 브라우저단에서 서버로요청하여 다시 페이지를 반환(브라우저, 클라이언트단에서 동작, URL 이 바뀜!!!)
포워드 : 서버단에서 페이지 변경하여 반환(서버단에서 동작, URL 안바뀜!!!)

현재 ForwardEx1 - ForwardEx2 는 같은 리퀘스트 영역

 --%>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 11:34, Page Forwarding Example 1</title>
</head>
<body>
<h2>forward 하는 페이지입니다. 이 내용은 화면에 출력되지는 않습니다...</h2>
<%
	pageContext.forward("ForwardEx2.jsp");
%>
</body>
</html>
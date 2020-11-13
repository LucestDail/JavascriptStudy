<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 11:36, Page Forwarding Example 2</title>
</head>
<body>
<h2> ForwardEx2.jsp 페이지입니다.</h2>
<%-- 포워드 요청되면 페이지가 출력되고 url 은 기존 페이지의 url 로 남습니다... 신기하죠
?id=ohoho 형식으로 ForwardEx1 URL 에 붙여서 보낼경우에는 그 데이터 역시 ForwardEx2 로도 넘어갑니다. 같은 리퀘스트 영역을 공유하고 있기 때문이죠.  --%>
<%= request.getParameter("id") %><br>
</body>
</html>
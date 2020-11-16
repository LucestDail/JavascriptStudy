<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 10:10, Book jsp file source coding</title>
<link rel = "stylesheet" href = "../css/main.css">
<%request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="book" class = "chap7.Book"/>
<%--
	chap7.Book book = new chap7.Book();
	request.setAttribute("book", book);
	scope 속성이 생략된 경우 : page 영역임
	pageContext.setAttribute("book",book);
 --%>
<jsp:setProperty property = "*"  name = "book"/>
<%--
	property = "*" : 파라매터 이름,프로퍼티 이름 같은 값을 book객체에 저장
	book.setName(request.getParameter("name");
	book.setTitle(request.getParameter("title");
	book.setContent(request.getParameter("content");
 --%>
</head>
<body>
<table><caption>방명록 조회</caption>
	<tr>
		<td>작성자</td>
		<td><jsp:getProperty name = "book" property = "name" />
		,<%=book.getName() %></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><jsp:getProperty name = "book" property = "title" />
		,<%=book.getTitle() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><jsp:getProperty name = "book" property = "content" />
		,<%=book.getContent() %></td>
	</tr>
</table>
</body>
</html>
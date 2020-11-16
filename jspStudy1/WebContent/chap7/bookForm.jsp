<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 09:55, Book Form source coding</title>
<link rel = "stylesheet" href = "../css/main.css">
</head>
<body>
<form action = "book.jsp" method = "post">
	<table>
		<tr>
			<td>작성자</td>
			<td><input type = "text" name = "name"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type = "text" name = "title"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows = "5" cols = "60" name = "content"></textarea></td>
		</tr>
		<tr>
			<td colspan = "2">
			<input type = "submit" value = "방명록 등록"></td>
		</tr>
	</table>
</form>
</body>
</html>
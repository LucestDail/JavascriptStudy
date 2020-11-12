<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#buttonStyle{
	text-align:center;
	margin:0 auto;
}
</style>
</head>
<body>
<form action = "Test2_Output.jsp" method="get">
<table>
<tr>
	<td>방문자</td>
	<td><input type = "text" name = "visitorValue">
	</td>
</tr>
<tr>
	<td>제목</td>
	<td><input type = "text" name = "titleValue">
	</td>
</tr>
<tr>
	<td>내용</td>
	<td><!-- <input type = "text" name = "writingValue" style = "width:500px; height:100px;"> -->
	<textarea name="writingValue" style="width:400px;height:100px;"></textarea>
</tr>
<tr id="buttonStyle">
<td colspan = "2">
	<input type = "submit" value = "글쓰기" >
</td>
</tr>
</table>
</form>
</body>
</html>
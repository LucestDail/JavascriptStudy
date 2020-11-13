<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 13:32, Session Example for bucket list</title>
</head>
<body>
<h3> 상품 선택</h3>
<form action = "sessionAdd.jsp" method="post">
	<select name = "product">
		<option>사과</option>
		<option>배</option>
		<option>감</option>
		<option>자몽</option>
		<option>귤</option>
		<option>딸기</option>
	</select>
	<input type = "submit" value="장바구니추가">
</form>
<a href="sessionView.jsp"> 장바구니 보기</a>
</body>
</html>
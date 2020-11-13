<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 14:52, Out implicit Object Example</title>
</head>
<body>
out 객체는 리스폰스 객체의 출력 버퍼에 데이터를 저장할 수 있는출력 스트림 객체입니당...<br>
<%
	int sum = 0;
	for(int i = 1; i <= 10; i++){
		sum += i;
		%>
		1부터 <%=	i%> 까지의 부분합 : <%=sum %><br>
		<%
	}
%>
1부터 10 까지의 합 : <%=sum %>
<hr>
<%
	sum = 0;
	for(int i = 1; i <= 10; i++){
		sum += i;
		out.println("1부터 " + i + " 까지의 부분합 : " + sum + "<br>");
	}
	out.println("1부터 10 까지 합 : " + sum);
%>
</body>
</html>
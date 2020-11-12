<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String inputTarget = request.getParameter("inputValue");
int oddSum = 0;
int evenSum = 0;
int totalSum = 0;
for(int i = 0; i <= Integer.parseInt(inputTarget); i++){
	totalSum += i;
	if(i % 2 == 0){
		evenSum += i;
	}else{
		oddSum += i;
	}
}
%>
<%=inputTarget%> 까지의 합 : <%=totalSum %><br>
<%=inputTarget%> 까지의 짝수합 : <%=evenSum %><br>
<%=inputTarget%> 까지의 홀수합 : <%=oddSum %><br>

</body>
</html>
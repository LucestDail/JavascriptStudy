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
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String kbn = request.getParameter("kbn");
	int sum = 0;
	for(int i = 1; i<=num; i++){
		switch(kbn){
		case "0" :
			sum += i;
			break;
		case "1" :
			if(i%2 == 1) {
				sum += i; 
			}
			break;
		case "2" : 
			if(i%2 == 0) {
				sum += i; 
			}
			break;
		}
	}	
%>
<h1><%=num %> 까지 <%=(kbn.equals("0")) ? "전체합계" : (kbn.equals("2") ? "짝수합계" : "홀수합계") %> : <%=sum %></h1>
</body>
</html>
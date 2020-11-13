<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session에 등록된 날짜를 조회하기</title>
</head>
<body>
<%
Object timeObject = session.getAttribute("time");
String time = (String)timeObject;
request.setCharacterEncoding("utf-8");
if(time == null){
	%><form action = "test2.jsp">
		<script type = "text/javascript">
			alert("등록된 날짜가 없습니다.");
			history.go(-1);
		</script>
	</form>
	<%
}else{
	out.println("반갑 습니다. " + time);	
	session.removeAttribute("time");
}
	%>
</body>
</html>
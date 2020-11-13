<%@page import="java.util.Iterator"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 파라매터를 가져오는 여러가지 방법
1. String request.getParameter(파라매터이름) : 파라매터값을 단 1개 반환함...
2. String[] request.getParameterValues(파라매터이름) : 파라매터값을 여러개 반환함(여러개가 있으면...!, 한개만 있어도 쓸수는 있음!)
3. Enumeration request.getParameterNames() : 요청 객체에 있는 (전달받은!) 파라매터에서 속성 이름들을 전부 다 반환함!
+. 쿠키 정보도 있고 헤더 정보도 있음. 여러가지가 있으니 한번 확인해보고 가져오기.
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>20201112, 15:51, Request Example for checking transfer
	parameter printing</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	String year = request.getParameter("year");
	%>
	name(이름) : <%=name%><br>
	age(나이) : <%=age%><br>
	gender(성별) : <%=gender.equals("1") ? "male" : "female" %><br>
	hobby(취미) : <%=hobby%><br>
	birth(년도) : <%=year%><br>
	<br><br><hr>
	<h3> 모든 취미 정보 조회하기</h3>
	취미 : 
	<%
	String[] hobbies = request.getParameterValues("hobby");
	for(String h : hobbies){
		%>
	<%= h %>&nbsp; &nbsp;
	<% }%>
	<br><br><hr>
	<table>
		<tr>
			<td>파라매터이름</td>
			<td>파라매터값</td>
		</tr>
		<% 
		// 모든 파라미터의 이름을 리턴
		// Enumeration : 반복자, Iterator 의 구버전
		Enumeration e = request.getParameterNames(); 
		while(e.hasMoreElements()){
			String pname = (String)e.nextElement();
			String[] values = request.getParameterValues(pname);
		%>
		<tr><td><%=pname %></td>
		<td><% for(String v:values){ %>
		<%=v %>&nbsp;&nbsp;
		<%} %>
		<%} %>
	</table><br><br><hr>	
</body>
</html>
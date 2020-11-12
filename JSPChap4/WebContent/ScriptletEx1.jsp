<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 스크립트(Script) : 자바로서 활동하는, 자바의 영역
		1. 스크립트릿 : <% %> 형식이며, jspService 메소드에 자바소스로 생성됨
		2. 표현식 : <%= %> 값을 화면에 출력함, 값이 있어야만 합니다.
					한줄 주석 사용 금지, 세미콜론(;) 사용 안함(=값만 써야함!)
		3. 선언문 : <%! %> 형식이며, 맴버로 생성되는 영역.(쓸까 이걸...?)
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>20201112,14:55 Scriptlet Example 1</title>
</head>
<body>
<% //스크립트릿 : 메소드 선언 불가(왜? _JSP메소드에서 선언되기 때문에!)
	System.out.println("스크립트 예제");
	String msg= "스크립트 예제";
	for(int i = 1; i <= 10; i++){
%>
<%-- 화면에 값을 출력!
1. 값이 있어야만 합니다. 값이 없으면 브라우저에 출력이 불가능합니다...
	예) 변수, 수식, return 이 있는 함수
2. 세미콜론 사용 금지
3. 한줄 주석 사용 금지! 무조건 범위 주석으로 주석처리할것! --%>
<%=i + ":" + "맴버 : " + this.getMsg() + page.getClass()+ "msg" +  msg/*표현식*/ %><br>
<%--<%= System.out.println()%> 이거 안됩니다... 리턴값이 보이드라서...--%>
<%} %>
<%! //선언문
	String msg = "선언문으로 선언한 msg 변수";
	String getMsg(){
		return msg;
	}
%>
</body>
</html>
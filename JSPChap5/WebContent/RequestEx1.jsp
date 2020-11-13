<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
파라매터 이름 : <input type = "~~~" name = "parameterName"
request.getParameter("parameterName") : 파라매터의 값을 1개 리턴
인코딩 방식 설정
request.setCharacterEncoding("인코딩명");
POST 방식에서 사용이 가능. 요청 객체 내부의 파라매터의 값들을 인코딩하도록 설정
파라매터 조회 전에 호출 해야합니다!!!
get 방식 : 톰캣의 경우 server.xml에 포트 8080 설정 부분에서 URIEncoding="인코딩명" 추가해야합니다.
--%>
<html>
<head>
<meta charset="UTF-8">
<title>20201112, 15:41, Request Form Example 1</title>
<script type = "text/javascript">
	function inputcheck(f){
		if(f.name.value == ''){
			alert("이름을 작성하지 않았습니다.");
			f.name.focus();
			return false;
		}
		if(f.age.value == ''){
			alert("나이를 작성하지 않았습니다.");
			f.age.focus();
			return false;
		}
		return true;
	}

</script>
</head>
<body>
	<h2>request implicit object : object which saving client request
		information</h2>
	<form action="RequestEx1_1.jsp" method="post" onsubmit="return inputcheck(this)">
	Name : <input type="text" name="name"><br> 
	Age : <input type="text" name="age"><br>
	Gender :
	<input type="radio" name="gender" value="1">Male
	<input type="radio" name="gender" value="2">Female<br>
	Hobby : 
	<input type="checkbox" name="hobby" value="요리">요리
	<input type="checkbox" name="hobby" value="여행">여행
	<input type="checkbox" name="hobby" value="야구">야구
	<input type="checkbox" name="hobby" value="축구">축구
	<input type="checkbox" name="hobby" value="독서">독서 <br>
	birth : <select name="year">
			<% for(int i = 1990; i<2001;i++){ %>
			<option><%=i %></option>
			<%} %>
		</select><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>
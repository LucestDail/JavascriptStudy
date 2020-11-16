<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201116, 11:07, join form source coding</title>
<link rel = "stylesheet" href = "../css/main.css">
<script type = "text/javascript">
	function inputcheck(f){
		if(f.id.value == ""){
			alert("아이디가 비어있습니다...");
			f.id.focus();
			return false;
		}
		if(f.pass.value == ""){
			alert("비밀번호가 비어있습니다...");
			f.pass.focus();
			return false;
		}
		if(f.name.value == ""){
			alert("이름이 비어있습니다...");
			f.name.focus();
			return false;
		}
		if(f.email.value == ""){
			alert("이메일이 비어있습니다...");
			f.email.focus();
			return false;
		}
		if(f.age.value == ""){
			alert("나이값이 비어있습니다...");
			f.age.focus();
			return false;
		}
		if(isNaN(f.age.value)){
			alert("나이는 숫자만 가능합니다...");
			f.age.value = "";
			f.age.focus();
			return false;
		}
		if(!f.email.value.includes("@")){
			alert("올바르지 않은 이메일 형식입니다...");
			f.email.value = "";
			f.email.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<form action = "join.jsp" method = "post" onsubmit = "return inputcheck(this)">
	<table>
		<caption>회원가입</caption>
		<tr>
			<td>아이디</td>
			<td><input type = "text" name = "id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type = "password" name = "pass"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type = "text" name = "name"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type = "radio" name = "gender" value = "1" checked>남<input type = "radio" name = "gender" value = "2" checked>여</td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type = "text" name = "age"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type = "text" name = "email"></td>
		</tr>
		<tr><td colspan = "2"><input type = "submit" value = "회원가입">
	</table>
</form>
</body>
</html>
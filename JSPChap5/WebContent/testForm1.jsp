<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 계산기</title>
<script type = "text/javascript">
	function inputCheck(f,kbn){
		if(f.num1.value == ""){
			alert("숫자 1 : 입력되지 않았습니다.");
			f.num1.focus();
			return;
		}
		if(f.num2.value == ""){
			alert("숫자 2 : 입력되지 않았습니다.");
			f.num2.focus();
			return;
		}
		if(isNaN(f.num1.value)){
			alert("숫자 1 : 숫자가 아닙니다...");
			f.num1.focus();
			return;
		}
		if(isNaN(f.num2.value)){
			alert("숫자 2 : 숫자가 아닙니다...");
			f.num2.focus();
			return;
		}
		f.kbn.value = kbn;
		f.submit();
		return true;
	}
</script>
</head>
<body>
<form action = "test1.jsp" method="post">
<table>
	<tr>
		<td>숫자1 :</td>
		<td><input type = "text" name = "num1"></td>
	</tr>
	<tr>
		<td>숫자2 :</td>
		<td><input type = "text" name = "num2"></td>
	</tr>
	<tr>
		<td colspan = "2">
		<input type="hidden" name ="kbn">
		<input type="button" value="+" onclick = "inputCheck(this.form,0)">
		<input type="button" value="-" onclick = "inputCheck(this.form,1)">
		<input type="button" value="*" onclick = "inputCheck(this.form,2)">
		<input type="button" value="/" onclick = "inputCheck(this.form,3)">
	</tr>
</table>
</form>
</body>
</html>
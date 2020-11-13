<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력된 숫자까지의 합 구하</title>
<script type = "text/javascript">
	function inputcheck(f){
		if(f.inputValue.value == ''){
			alert("빈값입니다. 숫자를 입력하세요");
			f.num.focus();
			return false;
		}
		if(isNaN(f.inputValue.value)){
			alert("숫자가 아닙니다. 숫자만 입력하세요");
			f.num.focus();
			f.num.value="";
			return false;
		}
		return true;
	}

</script>
</head>
<body>
<form action = "Test1_Output.jsp" method = "post" onsubmit="return inputcheck(this)">
<input type = "text" name = "inputValue">까지의 합 구하기
<input type = "submit" value = "합계">
</form>
</body>
</html>
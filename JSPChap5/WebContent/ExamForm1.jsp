<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20201113, 10:34 Exam for Form Example 1</title>
<script type = "text/javascript">
	var count = 0;
	var checker = 0;
	function inputCheck(f,kbn){
		if(f.num.value == ""){
			count++;
			if(count > 5){
				alert("숫자 입력하라고...");
			}else{
				alert("숫자를 입력해야해용!");
			}
			f.num.focus();
			return;
		}
		if(isNaN(f.num.value)){
			checker++;
			if(checker > 5){
				alert("숫자 입력하라고...");
			}else{
				alert("숫자를 입력해야해용!");
			}
			f.num.focus();
			return;
		}
		f.kbn.value = kbn;
		f.submit(); // 이것이 바로 서브밋해주는 기능! 자바스크립로 보내버리기(단, 온서브밋 onsubmit 이벤트 발생은 불가) 페이지만 이동시키는 느낌, 폼 단위로 서브밋 돼버립니당...
		// 즉, num, kbn 파라매터를 가지고 exam1.jsp 로 페이지 호출해버립니다.
		return true;
	}
</script>
</head>
<body>
<form action = "exam1.jsp" method="post">
	<input type = "hidden" name = "kbn">
	<input type = "text" name = "num"> 까지의 합 구하기!
	<input type = "button" value = "전체합계" onclick = "inputCheck(this.form,0)">
	<input type = "button" value = "짝수합계" onclick = "inputCheck(this.form,1)">
	<input type = "button" value = "홀수합계" onclick = "inputCheck(this.form,2)">
</form>
</body>
</html>
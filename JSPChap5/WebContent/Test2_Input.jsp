<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript">
	function inputcheck(f){
		if(f.visitorValue.value == ''){
			alert("방문자칸이 비어져 있습니다.작성하세요");
			f.num.focus();
			return false;
		}
		if(f.titleValue.value == ''){
			alert("제목칸이 비어져 있습니다.작성하세요");
			f.num.focus();
			return false;
		}
		if(f.writingValue.value == ''){
			alert("내용칸이 비어져 있습니다.작성하세요");
			f.num.focus();
			return false;
		}
		return true;
	}

</script>
<style type="text/css">
#buttonStyle{
	text-align:center;
	margin:0 auto;
}
</style>
</head>
<body>
<form action = "Test2_Output.jsp" method="post" onsubmit="return inputcheck(this)">
<table>
<tr>
	<td>방문자</td>
	<td><input type = "text" name = "visitorValue">
	</td>
</tr>
<tr>
	<td>제목</td>
	<td><input type = "text" name = "titleValue">
	</td>
</tr>
<tr>
	<td>내용</td>
	<td><!-- <input type = "text" name = "writingValue" style = "width:500px; height:100px;"> -->
	<textarea name="writingValue" style="width:400px;height:100px;"></textarea>
</tr>
<tr id="buttonStyle">
<td colspan = "2">
	<input type = "submit" value = "글쓰기" >
</td>
</tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201113, 16:13, Include Action Tag Example 1</title>
</head>
<body>
<h3> Include 액션 태그는 다른 페이지의 내용을 가져올 수 있답니다...
하지만 출력 버퍼만 공유되며 변수 공유는 안된다고 하네용...

포함하는 페이지와 포함되는 페이지는 각각의 서블릿으로 생성되며, 출력버퍼만을 공유한다고 합니다...
</h3>
<jsp:include page = "IncludeActionTagEx2.jsp"/>
</body>
</html>
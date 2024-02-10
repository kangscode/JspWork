<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 입력 </title>
</head>
<body>
	<form action="outProc.jsp" method="post">
		<label> 이름 : </label><input type="text" name="name"><br>
		<label> 나이 : </label><input type="text" name="age">
		<br><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>
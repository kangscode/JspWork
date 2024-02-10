<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 이름, 성적 입력 </title>
</head>
<body>
	<h1> 입력 </h1>
	<br>
	<form action="ex05Pro.jsp" method="post">
		<label> 이름  : </label><input type="text" name="name"><br><br>
		<label> 국어  : </label><input type="text" name="kor"><br><br>
		<label> 영어  : </label><input type="text" name="eng"><br><br>
		<label> 수학  : </label><input type="text" name="math"><br><br>
		<input type="submit" value="전송">
	</form>



</body>
</html>
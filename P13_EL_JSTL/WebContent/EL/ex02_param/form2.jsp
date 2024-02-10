<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> form2 </title>
</head>
<body>
	<h3> 과목을 선택 하세요 </h3>
	<form action="formRes2.jsp" method="post">
		<input type="checkbox" name="subject" value="c"> C <br>
		<input type="checkbox" name="subject" value="c++"> C++ <br>
		<input type="checkbox" name="subject" value="java"> Java <br>
		<input type="checkbox" name="subject" value="JSP"> Jsp <br>
		<input type="checkbox" name="subject" value="python"> Python 
		<br><br>
		<input type="submit">
	</form>

</body>
</html>
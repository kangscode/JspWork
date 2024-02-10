<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 계산식 입력 </title>
</head>
<body>
	<form action="ex06CalcResult" method="post">
		<input type=text name="num1">
		<select name="operator">
			<option value="+"> + </option>
			<option value="-"> - </option>
			<option value="x"> x </option>
			<option value="%"> % </option>
		</select>
		<input type=text name="num2">
		<input type="submit" value="계산">
	</form>

</body>
</html>
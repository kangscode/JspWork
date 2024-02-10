<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 이름, 나이 입력</title>
</head>
<body>
	<h1> 이름, 나이 입력 </h1>
	<br>
	<form action="ex04Pro.jsp" method="post">
		<table border="1">
			<tr>
				<td> 이 름 : </td><td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td> 나 이 : </td><td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="입력 완료">
				</td>
			</tr>
		</table>

	</form>

</body>
</html>
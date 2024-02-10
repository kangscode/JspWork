<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 </title>
<script type="text/javascript" src="../script/memberScript.js"></script>
</head>
<body>
	<form action="login.jsp" name="loginForm" method="post">
		<table border="1" cellpadding="4">
			<tr>
				<td width="100"> 로그인</td>
				<td width="100"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td width="100"> 비밀번호 </td>
				<td width="100"><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="로그인" onclick='login()'> &nbsp;
				<input type="button" value="회원가입" onclick="location.href='writeForm.jsp'">
				</td>
			</tr>
		</table>
	
	
	</form>

</body>
</html>
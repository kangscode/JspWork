<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 가입 </title>
</head>
<body>
	<form action="memberRes2.jsp" method="post">
		<table border="1">
			<tr>
				<td width="200"> 아이디 </td>
				<td width="400"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td width="200"> 비밀번호 </td>
				<td width="400"><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td width="200"> 이름 </td>
				<td width="400"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td width="200"> 이메일 </td>
				<td width="400"><input type="text" name="email" size=50"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="가입하기"> &nbsp;
					<input type="reset" value="다시입력"> 
				</td>
			</tr>
		</table>	
	</form>
	
</body>
</html>
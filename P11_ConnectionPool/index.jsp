<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/header.jsp" %>
		<form action="" method="post">
			<table>
				<tr>
					<th>ID</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>PW</th>
					<td><input type="password" name=password></td>
				</tr>
				<tr>
					<td  colspan="2">
						<label style="font-weight: bold;"><input type="checkbox" name="remember" value="ok"> ID기억하기 </label>
						<input type="submit" value="Login" id="input1">
					</td>
				</tr>
			</table>
		</form>
<%@ include file="/layout/footer.jsp" %>
		
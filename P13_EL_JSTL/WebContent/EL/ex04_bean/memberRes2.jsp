<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="el.MemberBean" /><%-- 회원 정보를 저장하는 빈 생성 --%>
<jsp:setProperty name="m" property="*"/><%-- 전송된 회원 정보를 빈의 속성에 설정 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 정보 </title>
</head>
<body>
<table border="1">
		<tr>
			<th width="20%"> 아이디 </th>
			<th width="20%"> 비밀번호 </th>
			<th width="20%"> 이름 </th>
			<th width="40%"> email </th>
			<th width="20%"> 주소 </th>
		</tr>
		<%-- 표현식을 이용한 회원 정보 --%>
		<tr align="center">
			<td><%=m.getId() %></td>
			<td><%=m.getPwd() %></td>
			<td><%=m.getName() %></td>
			<td><%=m.getEmail() %></td>
		</tr>
		<%-- 빈 id와 속성 이름을 이용한 회원 정보 --%>
		<tr align="center">
			<td>${ m.id }</td>
			<td>${ m.pwd }</td>
			<td>${ m.name }</td>
			<td>${ m.email }</td>
		</tr>
	</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 구구단 출력 </title>
</head>
<body>
	<table border="1" width="700px">
		<tr align="center">
			<td colspan="2"><%=dan %> 단 </td>
		</tr>
		<% 
		for(int i = 1; i <= 9; i++) { %>
			<tr align="center"> 
				<td><%= dan %> x <%=i %></td><td><%=dan*i %></td>
			</tr>
		<% } %>
	
	</table>

</body>
</html>
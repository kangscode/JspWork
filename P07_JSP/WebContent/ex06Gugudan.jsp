<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 구구단 </title>
</head>
<body>
	<table border="1">
		<% for(int i = 1; i <= 9; i++) {%> 
			<tr align="center">
				<%for (int dan = 2; dan <= 9; dan++) {%>
					<td><%=dan %> * <%=i %> = <%=dan * i %></td>
				<%} %>			
		<%} %>
	
	</table>

</body>
</html>
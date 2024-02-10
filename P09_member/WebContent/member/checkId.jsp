<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.dao.MemberDAO" %>
<%
	String id = request.getParameter("id");

MemberDAO memberDAO = new MemberDAO();
boolean exist = memberDAO.isExistId(id);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 아이디 확인 </title>
<script type="text/javascript">
function checkIdClose(){
	opener.writeForm.id.value='<%=id %>';
	window.close();
	open.writeForm.pwd.focus();
}
</script>
</head>
<body>
	<form action="checkId.jsp" method="post">
		<%if(exist) { %>
			<p><%=id %>는 사용중입니다..</p>
			<label>아이디 : </label>
			<input type="text" name="id"> &nbsp; <input type="submit" value="중복체크">
		<% } else { %>
			<p><%=id %>는 사용 가능합니다..</p>
			<input type="button" value="사용" onclick="checkIdClose()">
		<%} %>
	</form>

</body>
</html>
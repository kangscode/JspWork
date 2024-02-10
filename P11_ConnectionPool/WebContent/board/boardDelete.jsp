<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.dao.BoardDAO" %>
<%
int seq = Integer.parseInt(request.getParameter("seq"));

BoardDAO boardDAO = new BoardDAO();
int res = boardDAO.boardDelete(seq);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글 삭제 </title>
<script type="text/javascript">
window.onload=function(){
	<% if(res > 0) {%>
		alert("삭제 되었습니다..^^");
		location.href="boardList.jsp?pg=1";
	<%} else {%>
		alert("삭제 실패~");
		history.back(-1); // 이전페이지 이동
	<%} %>
}
</script>
</head>
<body>






</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.dto.BoardDTO" %>
<%@ page import="board.dao.BoardDAO" %>
<%
request.setCharacterEncoding("utf-8");
int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg"));
String subject = request.getParameter("subject");
String content = request.getParameter("content");

BoardDTO boardDTO = new BoardDTO();
boardDTO.setSeq(seq);
boardDTO.setSubject(subject);
boardDTO.setContent(content);

BoardDAO boardDAO = new BoardDAO();
int res = boardDAO.boardModify(boardDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글수정 결과 </title>
<script type="text/javascript">
window.onload=function(){
	<% if(res > 0) {%>
		alert("수정 되었습니다..^^");
		location.href="boardList.jsp?pg=<%=pg %>";
	<%} else {%>
		alert("수정 실패~");
		history.back(-1); // 이전페이지 이동
	<%} %>
}
</script>
</head>
<body>

</body>
</html>
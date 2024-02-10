<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.dto.BoardDTO" %>
<%@ page import="board.dao.BoardDAO" %>
<%
int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg"));

BoardDAO boardDAO = new BoardDAO();
boardDAO.updateHit(seq); // 조회수 증가
BoardDTO boardDTO = boardDAO.boardView(seq);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글보기 </title>
</head>
<body>
	<table border="1" cellpadding="4">
		<tr>
			<td colspan="3"><%=boardDTO.getSubject() %></td>
		</tr>
		<tr>
			<td width="150" align="center"> 글번호 : <%=boardDTO.getSeq() %></td>
			<td width="150" align="center"> 작성자 : <%=boardDTO.getName() %></td>
			<td width="150" align="center"> 조회수 : <%=boardDTO.getHit() %></td>
		</tr>
		<tr>
			<td colspan="3" height="300" valign="top">	
				<pre><%=boardDTO.getContent() %></pre>
			</td>	
		</tr>
	</table>
	<br>
	<form action="#" name="boardView" method="get">
		<input type="button" value="글목록" onclick="location.href='boardList.jsp?pg=<%=pg %>'">	
	<%if(session.getAttribute("memberId").equals(boardDTO.getId())) {%>
		<input type="button" value="글수정" onclick="location.href='boardModifyForm.jsp?pg=<%=pg %>&seq=<%=seq %>'">
		<input type="button" value="글삭제" onclick="location.href='boardDelete.jsp?seq=<%=seq %>'">
	<%} %>
	</form>
</body>
</html>
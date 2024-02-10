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
<title> 글수정 </title>
<script type="text/javascript">
function checkBoardModify(){
	if(document.boardWriteForm.subject.value==""){
		alert("제목을 입력하세요!");
		document.boardModifyForm.subject.focus();
	}
	else if(document.boardWriteForm.content.value == ""){
		alert("내용을 입력하세요!");
		document.boardModifyForm.content.focus();
	}
	else {
		document.boardModifyForm.submit();
	}
}
</script>
</head>
<body>
	<form action="boardModify.jsp" name="boardModifyForm" method="post">
		<input type="hidden" name="seq" value="<%=seq %>">
		<input type="hidden" name="pg" value="<%=pg %>">
		<table border="1"> 
			<tr>
				<td width="50" align="center"> 제 목 </td>
				<td><input type="text" name="subject" value=<%=boardDTO.getSubject() %> %>size="58"></td>
			</tr>
			<tr>
				<td align="center"> 내 용 </td>
				<td>
					<textarea name="content" rows="20" cols="60"><%=boardDTO.getContent() %></textarea>
				</td>
			</tr>
			<tr>
				<td colsapn="2" align="center">
					<input type="button" value="수정완료" onclick="checkBoardModify()">
				</td>
			</tr>
		</table>
	</form>
	

</body>
</html>












<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.dto.BoardDTO" %>
<%@ page import="board.dao.BoardDAO" %>
<%@ page import="java.util.*" %>
<%
int pg = Integer.parseInt(request.getParameter("pg"));

int article = 10;		// 페이지 글수
int currentPage = pg;	// 현재 페이지
int startNum = (currentPage - 1) * article + 1;
int endNum = startNum + article - 1;

BoardDAO boardDAO = new BoardDAO();
ArrayList<BoardDTO> list = boardDAO.boardList(startNum,  endNum);

// 페이징
int totalArticle = boardDAO.getTotalArticle(); 	   // 전체 글수
int totalPage = (totalArticle - 1)/article + 1;    // 전체 페이지 수

int block = 3;  // 페이지 블록
int startPage = (currentPage - 1)/block*block + 1;
int endPage = startPage + block - 1;
if(endPage > totalPage) {
	endPage = totalPage;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글목록 </title>
<script type="text/javascript">
function isLogin(seq) {
	<% if(session.getAttribute("memberId") == null) {%>
		alert("로그인 하세요...");
	<%} else {%>
		location.href="boardView.jsp?seq="+seq+"&pg="+<%=pg %>;
	<%} %>
}
</script>
<style type="text/css">
# paging_block {
	width=1000px; height=30px;
	float : center;
	text-align : center;
	margin : 20px 0;
}
# currentPaging {
	color : red;
	text-decoration : underLine;
}
# paging{
	color : black;
	text-decoration : none;
}
</style>
</head>
<body>
	<table border="1" width="1000" cellpadding="4">
		<tr>
			<th width="100"> 글번호 </th>
			<th width="500"> 제 목 </th>
			<th width="200"> 작성자 </th>
			<th width="200"> 작성일 </th>
			<th width="100"> 조회수 </th> 
		</tr>
		<%for (BoardDTO boardDTO : list) {%>
		<tr>
			<td align="center"><%=boardDTO.getSeq()  %></td>
			<td align="center">
				<a href="#" onclick="isLogin(<%=boardDTO.getSeq()%>)"><%=boardDTO.getSubject()  %></a>
			</td>
			<td align="center"><%=boardDTO.getName()  %></td>
			<td align="center"><%=boardDTO.getLogtime()  %></td>
			<td align="center"><%=boardDTO.getHit()  %></td>
		</tr>
		<%} %>
	</table>
	
	<!-- 페이지 번호 -->
	<div id="paging_block">
	<%if(startPage > block) { %>
		[<a href="boardList.jsp?pg=<%=startPage-1 %>" id="paging"> 이전 </a>]
	<%} %>
	
	<%for (int i = startPage; i <= endPage; i++) { %>
		<%if(i == pg) { %>
		[<a href="boardList.jsp?pg=<%=i %>" id="currentPaging"> <%=i %> </a>]
		<%} else { %>
		[<a href="boardList.jsp?pg=<%=i %>" id="paging"> <%=i %> </a>]
	<%} %>
	<%} %>
	
	<%if(endPage < totalPage) { %>
		[<a href="boardList.jsp?pg=<%=endPage+1 %>" id="paging"> 다음 </a>]
	<%} %>
	</div>
	<input type="button" value="main" onclick="location.href='../main/index.jsp'">	
</body>
</html>
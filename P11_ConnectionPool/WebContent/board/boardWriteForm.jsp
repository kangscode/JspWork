<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글쓰기 </title>
<script type="text/javascript" scr="../script/boardScript.js"></script>
<style type="text/css">
textarea { resize : none;}
</style>
</head>
<body>	
	<form action="boardWrite.jsp" name="boardWriteForm" method="post">
		<table border="1"> 
			<tr>
				<td width="50" align="center"> 제 목</td>
				<td><input type="text" name="subject" size="50"></td>
			</tr>
			<tr>
				<td align="center"> 내 용 </td>
				<td>
					<textarea name="content" rows="20" cols="60" placeholder="내용을 작성하세요"></textarea>
				</td>
			</tr>
			<tr>
				<td colsapn="2" align="center">
					<input type="button" value="글쓰기" onclick="checkBoardWrite()">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
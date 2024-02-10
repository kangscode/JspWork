<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 실제 폴더
String realFolder = request.getServletContext().getRealPath("/storage");

// 파일 업로드 객체
// - new MultipartRequest( request, 파일 저장 경로, 파일 크기, 인코딩 방식, 파일 정책);
// - new DefaultFileRenamePolicy() : 파일 업로드시 똑같은 파일이 있을 경우, 기본 파일 이름에 숫자를 덧붙여서 저장합니다
MultipartRequest mr = new MultipartRequest(request, realFolder, 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());

String subject = mr.getParameter("subject");
String content = mr.getParameter("content");
// 업로드한 실제 파일명
String originalFileName = mr.getOriginalFileName("upload");
// 서버에 저장된 파일명
String fileName = mr.getFilesystemName("upload");

// 파일 객체
File file = mr.getFile("upload");

long fileSize = 0;
if(file != null) fileSize = file.length();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 파일 업로드 확인 </title>
</head>
<body>
	<h1> 업로드 확인 </h1>
	<br>
	<ul>
		<li> 제목 : <%=subject %></li>
		<li> 내용 : <%=content %></li>
		<li> 파일 : 
			<a href="fileDownload.jsp?fileName=<%=URLEncoder.encode(originalFileName, "utf-8") %>"><%=originalFileName %></a> &nbsp; <%=fileName %></li>
		<li> 크기 : <%=fileSize %></li>
	</ul>
</body>
</html>
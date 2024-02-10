package board.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.dao.BoardDAO;
import board.dto.BoardDTO;
import member.dto.MemberDTO;
import util.Action;

public class WriteAction implements Action {

        @Override
        public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                
                //MultipartRequest 객체를 이용하여 파일 업로드....
                
                String realPath =  request.getServletContext().getRealPath("/storage");

                
                MultipartRequest mr = new MultipartRequest(request, realPath, 1024*1024*10, "UTF-8", new DefaultFileRenamePolicy() );
                                
                // 1. request
                // 2. 서버에 저장할 파일 경로...실제경로
                // 3. 최대 파일 크기 - byte단위로 작성
                // 4. 인코딩 타입
                // 5. 파일 덮어쓰기 방지 설정 클래스 - 선택사항
                
                BoardDTO dto = new BoardDTO();
                
                dto.setId(((MemberDTO)request.getSession().getAttribute("login")).getId());
                dto.setName(mr.getParameter("name"));
                dto.setTitle(mr.getParameter("title"));
                
                String content = mr.getParameter("content");
                dto.setContent(content.replaceAll("\n", "<br>"));
                
                dto.setFilename(mr.getFilesystemName("filename"));

                System.out.println(mr.getParameter("filename"));
                System.out.println(mr.getOriginalFileName("filename"));
                System.out.println(mr.getFilesystemName("filename"));
                // mr.getParameter("filename") - null
                // mr.getOriginalFileName("filename") - 실제 업로드된 파일명
                // mr.getFilesystemName("filename") - 실제 저장된 파일명
                
                boolean check = BoardDAO.getInstance().write(dto);

                request.setAttribute("check", check);
                request.setAttribute("status", "write");
                request.setAttribute("url", "/MyHome/board/list.brd");
        }

}

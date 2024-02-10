package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dao.MemberDAO;
import member.dto.MemberDTO;
import util.Action;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPassword(request.getParameter("password"));
		dto.setName(request.getParameter("name"));
		dto.setEmail(request.getParameter("email"));
		dto.setTel1(request.getParameter("tel1"));
		dto.setTel2(request.getParameter("tel2"));
		dto.setTel3(request.getParameter("tel3")); 

		boolean check = MemberDAO.getInstance().insert(dto);
		
		String msg = null;
		String url = null;
		
		if(check) {
			msg = "회원 가입 성공!! 로그인 페이지=..";
			url = "/MyHome/login/login.do?id=" + dto.getId();
		}else {
			msg = "회원 가입 실패!! 이전 페이지로..";
			url = "/MyHome/member/join.me";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

	}

}

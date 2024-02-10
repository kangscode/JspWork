package member.controller.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dao.MemberDAO;
import member.dto.MemberDTO;
import util.Action;

public class CheckAction implements Action{
	
	public void execute(HttpServletRequest request,HttpServletResponse response) {
		
		MemberDTO dto = new MemberDTO();

		dto.setId(request.getParameter("id"));
		dto.setPassword(request.getParameter("password"));
		
		dto = MemberDAO.getInstance().checkLogin(dto);
		
		boolean check = false;
		String msg = null;
		
		if(dto != null){
			check = true;
			msg = dto.getName() + "님이 로그인 되었습니다.";
			
			HttpSession session = request.getSession(); 
					
			session.setAttribute("login", dto);
			
			String ckid = request.getParameter("ckid");
			
			Cookie[] cks = request.getCookies();
			
			if(cks != null){
				boolean c = true;
				for(Cookie ck : cks){
					if(ck.getName().equals("ckid")){
						if(ckid != null){
							if(!dto.getId().equals(ck.getValue())){
								ck = new Cookie("ckid",dto.getId());
								
								ck.setMaxAge(60 * 60 * 24);
								response.addCookie(ck);
							}
						}else{
							if(dto.getId().equals(ck.getValue())){
								ck.setMaxAge(0);
								response.addCookie(ck);
							}
						}
						c = false;
						break;
					}
				}
				
				if(c && ckid != null){
					Cookie ck = new Cookie("ckid",dto.getId());
					
					ck.setMaxAge(60 * 60 * 24);
					
					response.addCookie(ck);
				}
				
			}else if(ckid != null){
				Cookie ck = new Cookie("ckid",dto.getId());
				
				ck.setMaxAge(60 * 60 * 24);
				
				response.addCookie(ck);
			}
			
		}else{
			msg = "아이디 혹은 비밀번호가 잘못되었습니다.";
		}
		
		request.setAttribute("check", check);
		request.setAttribute("msg", msg);
		}
}

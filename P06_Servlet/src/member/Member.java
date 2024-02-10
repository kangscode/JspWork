package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/memberServlet")
public class Member extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] aHobby = request.getParameterValues("hobby");
		String[] aSubject = request.getParameterValues("subject");
		
		String hobby = "";
		if(aHobby != null) {
			for(int i = 0; i < aHobby.length; i++) {
				if(aHobby[i] != null) {
					hobby += aHobby[i] + " ";
				}
			}
		}
		
		String subject = "";
		if(aSubject != null) {
			for(int i = 0; i < aSubject.length; i++) {
				subject += aSubject[i] + " ";
			}
		}
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		
		out.println("<title> member </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<ul>");
		out.println("<li> 이름 : " + name + "</li>");
		out.println("<li> 성별 : " + gender + "</li>");
		out.println("<li> 취미 : " + hobby + "</li>");
		out.println("<li> 과목 : " + subject + "</li>");
		out.println("</ul>");
		out.println("<a href='javascript:history.back();'> 뒤로 </a>");
		
		out.println("</body>");
		out.println("</html>");
		
		
		
	}

	

}

package ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * # 서블릿 요청과 응답 수행 API
 * - 요청 : HttpServletRequest request
 *   > 웹 브라우저에서 전송한 정보를 tomcat 컨테이너가 HttpServletRequest 객체를 생성한 후 doGet()으로 넘겨 줍니다
 *   응답 : HttpServletResponse response  
 */

public class ParamServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 웹 브라우저에서 전송된 데이터의 인코딩을 설정합니다
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		// 1. 데이터 처리
		//- getParameter() 메서드를 사용해서 <input> 태그의 name 속성값으로 전송된 value를 가져옵니다
		String name = request.getParameter("username");
//		String strAge = request.getParameter("userage");
//		int age = Integer.parseInt(strAge);
		int age = Integer.parseInt(request.getParameter("userage"));
		
		// 2. 응답
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title> ParamServlet </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<br><br>");
		out.println(name + "님의 나이 : " + age + " 세<br><br>");
		if(age > 19)
			out.println("성인");
		else
			out.println("미성년자");
		out.println("</body>");
		out.println("</html>");
		
	}

	
}

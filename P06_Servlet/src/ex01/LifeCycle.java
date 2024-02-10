package ex01;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Servlet
 * - 초기화 : init()
 *   > 서블릿 요청시 맨 처음 한번만 호출됩니다
 *   
 *   작업 수행 : doGet(), doPost()
 *   > 서블릿 요청 시 매번 호출됩니다
 *     실제로 클라이언트가 요청하는 작업을 수행합니다
 *     
 *   종료 : destroy()
 *   > java 코드가 수정이 되었을 때 서블릿의 마무리 작업을 수행합니다
 *- init(), destroy() 메서드는 생략 가능하나 doGet() 또는 doPost() 메서드는 반드시 구현해야 합니다
 *
 * # 서블릿 생성 과정
 * 1. 서블릿 클래스 만들기
 * 2. 서블릿 메서드 구현
 * 3. 서블릿 맵핑 작업 
 * 4. 웹 브라우저에서 서블릿 맵핑 이름으로 요청하기
 * 
 * # 서블릿 맵핑 작업
 * - 프로젝트의 web.xml 에서 설정
 * - <servlet> 태그와 <servlet-mapping> 태그를 이용
 *   
 *   
 */

public class LifeCycle extends HttpServlet {
	
	public void init(ServletConfig config) throws SecurityException {
		System.out.println("- init() run -");
	}
	
	public void destroy() {
		System.out.println("- destroy() run -");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("- doGet() run -");
	}

	

}

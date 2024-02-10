package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BoardService;

//@Component - @Controller , @Service , @Repository 들의 부모 클래스
//명확성을 위해서 Component보다 역할에 맞는 어노테이션을 적어준다

@Controller
public class BoardController {
	//root-context.xml 은 Controller를 제외한 모든 객체를 만드는 파일
	//Controller는 servlet-context.xml에서 객체화를 한다
	
	//실행 경로를 참조할수 있는 상수를 지정
	public static final String VIEW_PATH = "/WEB-INF/views/";
	
	private BoardService service;
	
	public BoardController() {
		System.out.println("--- BoardController 생성자 ---");
	}
	
	public void setService(BoardService service) {
		this.service = service;
	}
	
	//WebServlet과 같은 역할...
	@RequestMapping("/board/list")
	public String list(Model model) {
		
		//Model 인터페이스는 Servlet과 Controller의 중간 매개체 역할
		// - 데이터를 다음페이지로 넘겨줄때 사용한다.
		// - request 영역에 저장된다.
		// - request 영역과 binding 처리가 되어 있다.
		
		List<String> list = service.selectList();
		
		//requset.setAttribute("list",list) 와 비슷한 역할
		model.addAttribute("list", list);
		
		return VIEW_PATH + "list.jsp";
		
		//return "list"; //포워딩을 통하여 /WEB-INF/views/list.jsp 전달.. 
	}
	
}






















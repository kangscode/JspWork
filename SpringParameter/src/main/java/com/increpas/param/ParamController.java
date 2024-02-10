package com.increpas.param;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vo.PersonVO;

@Controller
public class ParamController {

	public static final String VIEW_PATH = "WEB-INF/views/person/";
	
	@RequestMapping("/insertForm")
	public String insertForm() {
		return VIEW_PATH + "insertForm.jsp";
	}
	
	@RequestMapping("/insert1")
	public String insert1(Model model,@RequestParam("name") String name, int age, String tel) {
		
		PersonVO vo = new PersonVO(name, age, tel);
		
		model.addAttribute("vo", vo);
		
		return VIEW_PATH + "insertResult.jsp";
		 
	}
	
	@RequestMapping("/insert2")
	public String insert2(Model model, PersonVO vo) {
		
		model.addAttribute("vo", vo);
		
		return VIEW_PATH + "insertResult.jsp";	 
	}	
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertForm2() {
		return VIEW_PATH + "insertForm.jsp";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(Model model, PersonVO vo) {
		
		model.addAttribute("vo", vo);
		
		return VIEW_PATH + "insertResult.jsp";
	}
	
}

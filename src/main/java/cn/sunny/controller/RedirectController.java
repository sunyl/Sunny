package cn.sunny.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RedirectController {
	
	@RequestMapping(value= {"/","/index"})
	public String index(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping("/redirect_login")
	public String login(HttpServletRequest request) {
		return "page_user_login";
	}
	
	@RequestMapping("/redirect_userAdd")
	public String userAdd(HttpServletRequest request) {
		return "page_user_add";
	}
	
	@RequestMapping("/redirect_userQuery")
	public String userQuery(HttpServletRequest request) {
		return "page_user_query";
	}

	@RequestMapping("/redirect_departmentAdd")
	public String departmentAdd(HttpServletRequest request) {
		return "department_add";
	}
	
	@RequestMapping("/redirect_departmentQuery")
	public String departmentQuery(HttpServletRequest request) {
		return "department_query";
	}
	
	@RequestMapping("/redirect_jobAdd")
	public String jobAdd(HttpServletRequest request) {
		return "job_add";
	}
	
	@RequestMapping("/redirect_jobQuery")
	public String jobQuery(HttpServletRequest request) {
		return "job_query";
	}
	
	@RequestMapping("/redirect_employeeAdd")
	public String employeeAdd(HttpServletRequest request) {
		return "employee_add";
	}
	
	@RequestMapping("/redirect_employeeQuery")
	public String employeeQuery(HttpServletRequest request) {
		return "employee_query";
	}
}

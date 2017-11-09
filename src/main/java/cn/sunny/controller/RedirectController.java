package cn.sunny.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RedirectController {
	
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
}

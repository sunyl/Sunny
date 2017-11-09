package cn.sunny.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.sunny.entity.User;
import cn.sunny.service.UserService;
import cn.sunny.utils.DatatablesView;
import cn.sunny.utils.JsonUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public ModelAndView loginCheck(HttpServletRequest request) {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		System.out.println("--->loginCheck name:" + name + " password:" + password);
		User user = userService.login(name, password);
		if (user == null) {
			return new ModelAndView("page_user_login", "error", "用户名或密码错误");
		} else {
			ModelAndView modelView = new ModelAndView();
			request.getSession().setAttribute("user", user);
			modelView.setViewName("index");
			return modelView;
		}
	}

	@RequestMapping(value = "/userAddAction", method = RequestMethod.POST)
	public @ResponseBody ModelAndView userAddAction(@RequestBody User user) {
		System.out.println("--->UserController:userAddAction121212 username = " + user.toString());
		user.setDate(new Date());
		userService.addUser(user);
		Map<String, String> map = new HashMap<String, String>();
		map.put("msg", "success");
		return new ModelAndView(new MappingJackson2JsonView(), map);
	}

	@RequestMapping(value = "/getUserList")
	public @ResponseBody String userAddAction(HttpServletRequest request) {
		System.out.println("--->UserController:getUserList");
		List<User> users = userService.getAllUser();		
	    DatatablesView<User> dataTable=new DatatablesView<User>();
	    dataTable.setData(users);
	    dataTable.setRecordsFiltered(10);
	    dataTable.setRecordsTotal(10);
	    dataTable.setDraw(0);
	    return JsonUtil.toJson(dataTable);   
	}

}

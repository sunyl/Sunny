package cn.sunny.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.sunny.entity.Job;
import cn.sunny.entity.User;
import cn.sunny.service.JobService;
import cn.sunny.service.UserService;
import cn.sunny.utils.DatatablesView;
import cn.sunny.utils.JsonUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@Autowired
	JobService jobService;

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public ModelAndView loginCheck(HttpServletRequest request) {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		System.out.println("--->loginCheck name:" + name + " password:" + password);
		User user = userService.login(name, password);
		ModelAndView modelView = new ModelAndView();
		if (user == null) {
			modelView.setViewName("redirect:/redirect_login");			
			modelView.addObject("error", "用户名或密码错误");
			return modelView;
		} else {
			
			HttpSession session = request.getSession();  
            session.setAttribute("username", name);  
            session.setMaxInactiveInterval(1800);
			modelView.setViewName("redirect:/index");
			return modelView;
		}
	}
	
	@RequestMapping(value="/logout")  
    public ModelAndView logout(HttpSession session) throws Exception{  
        session.invalidate();
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("redirect:/redirect_login");
        return modelView;
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

	@RequestMapping(value = "/getUserList",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getUserListAction(HttpServletRequest request) {
		int draw = request.getParameter("draw") == null ? 1 : Integer.valueOf(request.getParameter("draw"));
		int limit = request.getParameter("limit") == null ? 10 : Integer.valueOf(request.getParameter("limit"));
		int start = request.getParameter("start") == null ? 0 : Integer.valueOf(request.getParameter("start"));
		int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
		String search = request.getParameter("search");
		System.out.println("--->UserController:getUserList limit = " + limit + ",start=" + start + ",page=" + page
				+ ",draw=" + draw + ",search=" + search);

		List<User> users = userService.getUserListByPage(start, limit, search);
		DatatablesView<User> dataTable = new DatatablesView<User>();
		dataTable.setData(users);
		dataTable.setRecordsFiltered(userService.getCount(search));
		dataTable.setRecordsTotal(users.size());
		dataTable.setDraw(draw);				
		return JsonUtil.toJson(dataTable);
	}
	
	@RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<Boolean> deleteUser(@PathVariable("id") Integer id) {
		System.out.println("--->deleteUser id = " + id);
		int row = userService.deleteUser(id);
		return new ResponseEntity<Boolean>(row > 0, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/jobAddAction", method = RequestMethod.POST)
	public @ResponseBody ModelAndView userJobAction(@RequestBody Job job) {
		jobService.insertJob(job);		
		Map<String, String> map = new HashMap<String, String>();
		map.put("msg", "success");
		return new ModelAndView(new MappingJackson2JsonView(), map);
	}
	
	@RequestMapping(value = "/getJobListByPage",produces="application/json;charset=utf-8",method = RequestMethod.POST)
	@ResponseBody
	public String getJobListByPage(HttpServletRequest request) {
		int draw = request.getParameter("draw") == null ? 1 : Integer.valueOf(request.getParameter("draw"));
		int limit = request.getParameter("limit") == null ? 10 : Integer.valueOf(request.getParameter("limit"));
		int start = request.getParameter("start") == null ? 0 : Integer.valueOf(request.getParameter("start"));
		int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
		String search = request.getParameter("search");
		System.out.println("--->UserController:getJobList limit = " + limit + ",start=" + start + ",page=" + page
				+ ",draw=" + draw + ",search=" + search);

		List<Job> jobs = jobService.getJobListByPage(start, limit, search);
		DatatablesView<Job> dataTable = new DatatablesView<Job>();
		dataTable.setData(jobs);
		dataTable.setRecordsFiltered(jobService.getCount(search));
		dataTable.setRecordsTotal(jobs.size());
		dataTable.setDraw(draw);				
		return JsonUtil.toJson(dataTable);
	}
	
	@RequestMapping(value = "/getJobList",produces="application/json;charset=utf-8",method = RequestMethod.GET)
	@ResponseBody
	public String getJobList(HttpServletRequest request) {
		List<Job> jobs = jobService.getJobList();				
		return JsonUtil.toJson(jobs);
	}
}

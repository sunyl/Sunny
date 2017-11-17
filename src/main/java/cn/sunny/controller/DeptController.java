package cn.sunny.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import cn.sunny.entity.Dept;
import cn.sunny.service.DeptService;
import cn.sunny.utils.JsonUtil;

@Controller
@RequestMapping("/dept")
public class DeptController {
	
	@Autowired
	DeptService deptService;
	
	@RequestMapping(value = "/deptAddAction", method = RequestMethod.POST)
	public @ResponseBody ModelAndView deptAddAction(@RequestBody Dept dept) {
		System.out.println("--->deptAddAction deptAddAction");
		deptService.insertDept(dept);		
		Map<String, String> map = new HashMap<String, String>();
		map.put("msg", "success");
		return new ModelAndView(new MappingJackson2JsonView(), map);
	}
	
	@RequestMapping(value = "/getDeptList", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<List<Dept>> getDeptList(HttpServletRequest request) {
		System.out.println("--->getDeptList getDeptList");
		List<Dept> list=deptService.getDeptList();
		return new ResponseEntity<List<Dept>>(list, HttpStatus.OK);
	}
}

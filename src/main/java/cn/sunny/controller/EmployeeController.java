package cn.sunny.controller;

import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sunny.entity.Employee;
import cn.sunny.http.HttpStatus;
import cn.sunny.http.JsonResult;
import cn.sunny.service.EmployeeService;
import cn.sunny.utils.JsonUtil;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = "/employeeAddAction")
	@ResponseBody
	public String employeeAddAction(@RequestBody Employee employee) {
		System.out.println("--->employeeAddAction name = " + employee.getName() + " ,phone = " + employee.getPhone());
		employee.setCreateDate(new Date());
		int rows = employeeService.addEmployee(employee);
		return JsonUtil.toJson(new JsonResult<>(new HashMap(), HttpStatus.OK));
	}

}

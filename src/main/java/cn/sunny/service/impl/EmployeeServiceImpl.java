package cn.sunny.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sunny.dao.EmployeeDao;
import cn.sunny.entity.Employee;
import cn.sunny.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public int addEmployee(Employee employee) {
		return employeeDao.insertEmployee(employee);
	}

}

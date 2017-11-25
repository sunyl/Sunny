package cn.sunny.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sunny.dao.EmployeeDao;
import cn.sunny.entity.Employee;
import cn.sunny.service.EmployeeService;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public int addEmployee(Employee employee) {
        return employeeDao.insertEmployee(employee);
    }

    @Override
    public List<Employee> getEmployeeList(Integer start, Integer size, String keyword, Integer dept_id, Integer job_id) {
        return employeeDao.getEmployeeList(start, size, keyword, dept_id, job_id);
    }

    @Override
    public int deleteEmployee(Integer id) {
        return employeeDao.deleteEmployee(id);
    }

    @Override
    public int getCount(String keyword, Integer dept_id, Integer job_id) {
        return employeeDao.getCount(keyword, dept_id, job_id);
    }

}

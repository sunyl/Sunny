package cn.sunny.service;

import cn.sunny.entity.Employee;

import java.util.List;

public interface EmployeeService {

    int addEmployee(Employee employee);

    List<Employee> getEmployeeList(Integer start, Integer size, String keyword, Integer dept_id, Integer job_id);

    int deleteEmployee(Integer id);

    int getCount(String keyword, Integer dept_id, Integer job_id);
}

package cn.sunny.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.sunny.entity.Employee;

import java.util.List;

@Repository
public interface EmployeeDao {

    int insertEmployee(Employee employee);

    List<Employee> getEmployeeList(@Param("start") Integer start, @Param("size") Integer size, @Param("keyword") String keyword);
}

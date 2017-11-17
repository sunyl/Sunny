package cn.sunny.service;

import java.util.List;

import cn.sunny.entity.Dept;

public interface DeptService {
	
	int insertDept(Dept dept);

	List<Dept> getDeptList();
}

package cn.sunny.service;

import java.util.List;

import cn.sunny.entity.Dept;

public interface DeptService {
	
	int insertDept(Dept dept);

	List<Dept> getDeptListByPage(Integer start,Integer size);

	List<Dept> getDeptList();

	Dept getDept(Integer id);

	int getCount();

	int deleteDept(Integer id);
}

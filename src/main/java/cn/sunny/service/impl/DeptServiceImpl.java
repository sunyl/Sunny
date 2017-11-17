package cn.sunny.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sunny.dao.DeptDao;
import cn.sunny.entity.Dept;
import cn.sunny.service.DeptService;

@Service
public class DeptServiceImpl implements DeptService{

	@Autowired
	private DeptDao deptDao;
	
	@Override
	public int insertDept(Dept dept) {
		return deptDao.insertDept(dept);
	}

	@Override
	public List<Dept> getDeptList() {
		return deptDao.getDeptList();
	}

}

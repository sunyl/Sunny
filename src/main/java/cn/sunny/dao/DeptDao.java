package cn.sunny.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.sunny.entity.Dept;

@Repository
public interface DeptDao {

    int insertDept(Dept dept);

    List<Dept> getDeptList();

    Dept getDept(Integer id);
}

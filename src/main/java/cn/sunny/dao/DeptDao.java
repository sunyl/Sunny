package cn.sunny.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.sunny.entity.Dept;

@Repository
public interface DeptDao {

    int insertDept(Dept dept);

    List<Dept> getDeptListByPage(@Param("start") Integer start, @Param("size") Integer size);

    List<Dept> getDeptList();

    Dept getDept(Integer id);

    int getCount();

    int deleteDept(Integer id);
}

package cn.sunny.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.sunny.entity.Job;

@Repository
public interface JobDao {

	int insertJob(Job job);

	int deleteJob(Integer id);

	List<Job> getJobListByPage(@Param("start") Integer start, @Param("size") Integer size, @Param("keyword") String keyword);
	
	List<Job> getJobList();
	
	int updateJob(Job job);

	int getCount(@Param("keyword") String keyword);

	Job getJob(Integer id);
}

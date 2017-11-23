package cn.sunny.service;

import java.util.List;

import cn.sunny.entity.Job;

public interface JobService {
	
	int insertJob(Job job);

	int deleteJob(Integer id);

	List<Job> getJobListByPage(Integer start, Integer size, String keyword);
	
	List<Job> getJobList();
	
	int updateJob(Job job);
	
	int getCount(String keyword);

	Job getJob(Integer id);
}

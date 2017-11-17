package cn.sunny.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sunny.dao.JobDao;
import cn.sunny.entity.Job;
import cn.sunny.service.JobService;

@Service
public class JobServiceImpl implements JobService{
	
	@Autowired
	private JobDao jobDao;
	
	@Override
	public int insertJob(Job job) {
		return jobDao.insertJob(job);
	}

	@Override
	public int deleteJob(Integer id) {
		return jobDao.deleteJob(id);
	}

	@Override
	public List<Job> getJobList(Integer start, Integer size, String keyword) {
		return jobDao.getJobList(start, size, keyword);
	}

	@Override
	public int updateJob(Job job) {
		return jobDao.updateJob(job);
	}

	@Override
	public int getCount(String keyword) {
		return jobDao.getCount(keyword);
	}

}

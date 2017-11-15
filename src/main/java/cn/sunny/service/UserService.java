package cn.sunny.service;

import cn.sunny.entity.User;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserService {

	List<User> getAllUser();

	List<User> getUserListByPage(int start, int limit, String keyword);

	User login(String name, String password);

	int addUser(User user);

	int getCount(String keyword);
	
	int deleteUser(Integer id);
}

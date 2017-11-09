package cn.sunny.service;

import cn.sunny.entity.User;

import java.util.List;

public interface UserService {
	List<User> getAllUser();

	User login(String name, String password);

	int addUser(User user);
}

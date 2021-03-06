package cn.sunny.service.impl;

import cn.sunny.dao.UserDao;
import cn.sunny.entity.User;
import cn.sunny.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUserById(Integer id) {
        return userDao.getUser(id);
    }

    @Override
    public List<User> getAllUser() {
        return userDao.getUserList();
    }

    @Override
    public User login(String name, String password) {
        return userDao.login(name, password);
    }

    @Override
    @CachePut(value = "user", key = "#user.userName")
    public int addUser(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public List<User> getUserListByPage(int start, int limit, String keyword) {
        return userDao.getUserListByPage(start, limit, keyword);
    }

    @Override
    @Cacheable(value = "user", key = "'user_count_'+#keyword")
    public int getCount(String keyword) {
        return userDao.getCount(keyword);
    }

    @Override
    @CacheEvict(value = "user", key = "'id_'+#id")
    public int deleteUser(Integer id) {
        return userDao.deleteUser(id);
    }
}

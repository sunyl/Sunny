package cn.sunny.dao;

import cn.sunny.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    User getUser(int id);

    User login(@Param("name") String name, @Param("password") String password);

    List<User> getUserList();

    int insertUser(User user);

    int deleteUser(int id);
}

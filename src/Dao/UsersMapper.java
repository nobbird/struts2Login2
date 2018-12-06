package Dao;

import entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:zhn
 * @Date:2018/11/10
 */
public interface UsersMapper {
     int usersCount();
     User login(User user);
     boolean register(User user);
     int deleteUser(int id);
     List<User> getAllUser();
     List<User> findUserByName(@Param("userName") String userName);
     int updateMessage(User user);
     User findUserById(int id);
}

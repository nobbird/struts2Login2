package biz;

import entity.User;

import java.util.List;

/**
 * @Author:zhn
 * @Date:2018/10/23
 */
public interface UserBiz {
     User login( User user );

     boolean register( User user );

     int usersCount();

     int deleteUser(int id);

     List<User> getAllUser();

     List<User> findUserByName(String name);

     int updeteMessage(User user);

     User findUserById(int id);


}

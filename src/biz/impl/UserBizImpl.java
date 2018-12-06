package biz.impl;

import Dao.UsersMapper;
import biz.UserBiz;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author:zhn
 * @Date:2018/10/23
 */
@Service
public class UserBizImpl implements UserBiz{

    @Autowired
    UsersMapper usersMapper = null;

    public User login( User user ) {
        User user1 = usersMapper.login(user);
        return user1;
    }


    public boolean register(User user){
        boolean user1 = usersMapper.register(user);
        return  user1;
    }

    public int usersCount() {
        return usersMapper.usersCount();
    }


    public int deleteUser( int id ) {
        int ded = usersMapper.deleteUser(id);
        return ded;
    }

    public List<User> getAllUser() {
        List<User> userList = usersMapper.getAllUser();
        return userList;
    }

    @Override
    public List<User> findUserByName( String name ) {
        return usersMapper.findUserByName("%"+name+"%");
    }

    @Override
    public int updeteMessage( User user ) {
        int i=usersMapper.updateMessage(user);
        return i;
    }

    @Override
    public User findUserById( int id ) {
       return usersMapper.findUserById(id);
    }

    public void setUsersMapper( UsersMapper usersMapper ) {
        this.usersMapper = usersMapper;
    }

}

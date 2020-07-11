package org.game.service;

import org.game.bean.User;
import org.game.bean.UserExample;
import org.game.dao.UserMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-11 01:42
 * @description: NO description
 **/
@Service
public class UserService {
    @Autowired
    UserMapper userMapper;

    public boolean regUser(User user) {
        user.setIdentityId(2);
        int insert = userMapper.insert(user);
        if (insert != 1) {
            return false;
        }
        return true;
    }

    public User selectUserByExample(String userName,String password) {
        UserExample userExample = new UserExample();

        UserExample.Criteria criteria = userExample.createCriteria();
        if(userName.contains("@")) {
            UserExample.Criteria criteria1 = criteria.andUserEmailEqualTo(userName);

        }else{
            UserExample.Criteria criteria1 = criteria.andPhoneEqualTo(userName);
        }
        List<User> users = userMapper.selectByExample(userExample);
        if (users.size() == 0) {
            return null;
        }else{
            if(!password.equals(users.get(0).getUserPassword())){
                return null;
            }
        }
        return users.get(0);
    }

    public boolean updatePassword(String userPhone, String password) {
        User user = new User();
        user.setUserPassword(password);
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andPhoneEqualTo(userPhone);
        if(userMapper.updateByExampleSelective(user, userExample)>0){
            return true;
        }
        return false;
    }
}

package org.game.test;

import org.game.bean.Game;
import org.game.bean.GameExample;
import org.game.bean.User;
import org.game.dao.GameMapper;
import org.game.dao.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-05 08:31
 * @description: NO description
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class SSMtest {
    @Autowired
    UserMapper userMapper;
    @Autowired
    GameMapper gameMapper;
    @Test
    public void test1() {
/*        User user = userMapper.selectByPrimaryKey(1);
        System.out.println(user);*/


    }
}

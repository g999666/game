package org.game.test;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import org.game.bean.Game;
import org.game.bean.GameExample;
import org.game.bean.User;
import org.game.bean.UserExample;
import org.game.dao.GameMapper;
import org.game.dao.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.rmi.ServerException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

    }
/*
    public static void main(String[] args) {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4FyFrQE3TxUP5usv4A9j", "3PenJ9Dg8HhecrzjMWVd5tX1EB5ilY");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setSysMethod(MethodType.POST);
        request.setSysDomain("dysmsapi.aliyuncs.com");
        request.setSysVersion("2017-05-25");
        request.setSysAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", "18559268627");
        request.putQueryParameter("SignName", "SteamPlus");
        request.putQueryParameter("TemplateCode", "SMS_195585153");
        request.putQueryParameter("TemplateParam", "{code:1234}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
*/

}

package org.game.utils;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

import java.util.Arrays;
import java.util.Random;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-10 22:43
 * @description: NO description
 **/
public class NoteCode {
    public static String NoteCodeGen(String phone, String code) {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4FyFrQE3TxUP5usv4A9j", "3PenJ9Dg8HhecrzjMWVd5tX1EB5ilY");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setSysMethod(MethodType.POST);
        request.setSysDomain("dysmsapi.aliyuncs.com");
        request.setSysVersion("2017-05-25");
        request.setSysAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "SteamPlus");
        request.putQueryParameter("TemplateCode", "SMS_195585153");
        request.putQueryParameter("TemplateParam", "{code:" + code + "}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            return response.getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String randomNoteCode(){
        String code = "";
        for (int i = 0; i < 4; i++) {
            code+=String.valueOf(new Random().nextInt(10));
        }
        return code;
    }

}

package org.game.controller;

import org.game.bean.Game;
import org.game.bean.Msg;
import org.game.bean.Topic;
import org.game.service.GameService;
import org.game.utils.RandomValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.Arrays;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-05 08:46
 * @description: NO description
 **/
@Controller
public class GoView {
    @Autowired
    GameService gameService;
    @RequestMapping(value = "/Verify")
    @ResponseBody
    public Msg optionCode( HttpServletRequest request){
        String Content = request.getParameter("content");
        String[] split = Content.split("&_&");
        String randomKey = (String) request.getSession().getAttribute(RandomValidateCode.RANDOMCODEKEY);
        String code = split[2];
        if (!code.equals(randomKey)) {
            return Msg.fail().add("msg","验证码错误");
        }else {
            String content = split[0] + "&_&" + split[1];
            if(!gameService.insertContent(content)) {
                return Msg.fail().add("msg","发送失败");
            }
            return Msg.suessce().add("msg","成功");
        }
    }
    @RequestMapping(value = "/getVerify")
    public void getVerify(HttpServletRequest request, HttpServletResponse response){
        response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
        response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出验证码图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/games/{key}")
    public String goGames(@PathVariable("key") String key, HttpServletRequest request) {
        request.setAttribute("key", key);
        return "games";
    }
    @RequestMapping("/contact")
    public String goContact(){
        return "contact";
    }
    @RequestMapping("/blog")
    public String goBlog(){
        return "blog";
    }
    @RequestMapping("/charge")
    public String goCharge(){
        return "charge";
    }
    @RequestMapping("/404")
    public String go404(){
        return "404";
    }
    @RequestMapping("/single")
    public String goSingle(){
        return "single";
    }

}

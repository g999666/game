package org.game.controller;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.game.bean.Game;
import org.game.bean.Msg;
import org.game.bean.Topic;
import org.game.bean.User;
import org.game.service.GameService;
import org.game.service.UserService;
import org.game.utils.NoteCode;
import org.game.utils.RandomValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

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
    @Autowired
    UserService userService;
    @RequestMapping(value = "/Verify")
    @ResponseBody
    public Msg optionCode(HttpServletRequest request) {
        String Content = request.getParameter("content");
        String[] split = Content.split("&_&");
        String randomKey = (String) request.getSession().getAttribute(RandomValidateCode.RANDOMCODEKEY);
        String code = split[2];
        if (!code.equals(randomKey)) {
            return Msg.fail().add("msg", "验证码错误");
        } else {
            String content = split[0] + "&_&" + split[1];
            if (!gameService.insertContent(content)) {
                return Msg.fail().add("msg", "发送失败");
            }
            return Msg.suessce().add("msg", "成功");
        }
    }
    @RequestMapping(value = "/sendNoteCode/{code}")
    @ResponseBody
    public Msg sendNoteCode(@PathVariable("code") String phoneCode, HttpServletRequest request) throws JsonProcessingException {
        String noteCode = NoteCode.randomNoteCode();
        String s = NoteCode.NoteCodeGen(phoneCode, noteCode);
        ObjectMapper mapper = new ObjectMapper();
        JsonNode jsonNode = mapper.readTree(s);
        String message = jsonNode.path("Message").asText();
        if(!message.equals("OK")){
            return Msg.fail();
        }
        HttpSession session = request.getSession();
        session.removeAttribute("noteCode");
        session.setMaxInactiveInterval(120);
        session.setAttribute("noteCode",noteCode);
        return Msg.suessce();
    }
    @RequestMapping(value = "/regUser")
    @ResponseBody
    public Msg regUser(@Valid User user, HttpServletRequest request) throws JsonProcessingException {
        HttpSession session = request.getSession();
        String noteCode = (String)session.getAttribute("noteCode");
        if (noteCode == null) {
            return Msg.fail().add("msg", "请发送验证码");
        }
        if (!noteCode.equals( user.getHeadPic())) {
            return Msg.fail().add("msg","验证码错误");
        }
        user.setHeadPic(null);
        boolean falg=userService.regUser(user);
        if(falg){
            session.removeAttribute("noteCode");
            return Msg.suessce().add("msg","添加正确");
        }
        return Msg.fail().add("msg","添加错误");
    }
    @RequestMapping("/loginUser")
    @ResponseBody
    public Msg login(@Valid User user, HttpServletRequest request) {
        String headPic = user.getHeadPic();
        String s = headPic.toUpperCase();
        if (!s.equals(request.getSession().getAttribute(RandomValidateCode.RANDOMCODEKEY))) {
            return Msg.fail().add("msg", "验证码错误");
        }
        String name = user.getUserName();
        User user1 = userService.selectUserByExample(user.getUserName(),user.getUserPassword());
        request.getSession().setAttribute("user",user1);
        if(user1==null){
            return Msg.fail().add("msg","登录失败");
        }else{
            return Msg.suessce().add("msg","登录成功");
        }
    }
    @RequestMapping("/findPassword")
    @ResponseBody
    public Msg findUser(@Valid User user,HttpServletRequest request){
        HttpSession session = request.getSession();
        String noteCode = (String)session.getAttribute("noteCode");
        if (noteCode == null) {
            return Msg.fail().add("msg", "请发送验证码");
        }
        if (!noteCode.equals( user.getHeadPic())) {
            return Msg.fail().add("msg","验证码错误");
        }
        user.setHeadPic(null);
        boolean falg=userService.updatePassword(user.getPhone(),user.getUserPassword());
        if(falg){
            session.removeAttribute("noteCode");
            return Msg.suessce().add("msg","更改成功");
        }
        return Msg.fail().add("msg","更改错误");
    }

    //<editor-fold desc="网页跳转">
    @RequestMapping(value = "/getVerify")
    public void getVerify(HttpServletRequest request, HttpServletResponse response) {
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
    public String goContact() {
        return "contact";
    }

    @RequestMapping("/blog")
    public String goBlog() {
        return "blog";
    }

    @RequestMapping("/reviews")
    public String goReviews() {
        return "reviews";
    }

    @RequestMapping("/404")
    public String go404() {
        return "404";
    }

    @RequestMapping("/single/{num}")
    @ResponseBody
    public ModelAndView goSingle(@PathVariable("num") Integer gameId,ModelAndView modelAndView) {
        Game game = gameService.selectSingle(gameId);
        modelAndView.setViewName("single");
        modelAndView.addObject(game);
        return modelAndView;
    }

    @RequestMapping("/login")
    public String goLogin() {
        return "login";
    }
    //</editor-fold>


}

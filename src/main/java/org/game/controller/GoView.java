package org.game.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-05 08:46
 * @description: NO description
 **/
@Controller
public class GoView {
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
    @RequestMapping("/reviews")
    public String goReviews(){
        return "reviews";
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

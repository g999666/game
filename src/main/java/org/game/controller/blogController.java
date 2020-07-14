package org.game.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.sf.jsqlparser.statement.select.Top;
import org.game.bean.Game;
import org.game.bean.Msg;
import org.game.bean.Topic;
import org.game.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-08 19:28
 * @description: NO description
 **/
@Controller
@RequestMapping("/blog")
public class blogController {
    @Autowired
    BlogService blogService;

    @RequestMapping("/all/{num}")
    @ResponseBody
    public Msg getAllBlog(@PathVariable("num")Integer num) {
        PageHelper.startPage( num,2);
        List<Game> list = blogService.getAllBlog();
        PageInfo pageInfo = new PageInfo(list, 5);
        return Msg.suessce().add("page",pageInfo);
    }

    @RequestMapping("/topic/{id}")
    @ResponseBody
    public Msg getTopicById(@PathVariable("id") Integer id) {
        List<Topic> topics=blogService.getAllTopicById(id);
        return Msg.suessce().add("topic",topics);
    }
}

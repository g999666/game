package org.game.controller;

import org.game.bean.Game;
import org.game.bean.Msg;
import org.game.dao.GameMapper;
import org.game.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-05 12:42
 * @description: NO description
 **/
@Controller
@RequestMapping("/game")
public class gameController {
    @Autowired
    GameService gameService;

    @RequestMapping(value = "/List/{list}/{num}")
    @ResponseBody
    public Msg getHotList(@PathVariable("list")String list,@PathVariable("num") Integer num){
        List<Game> lists=gameService.selectGameByRank(list,num);
        return Msg.suessce().add("rank", lists);
    }

    @RequestMapping("/HomeList")
    @ResponseBody
    public Msg getHomeList() {
        Map<String,Object> homeGames = gameService.selectHomeGameLists();
        return Msg.suessce().add("homeGames",homeGames);
    }
}

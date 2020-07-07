package org.game.service;

import org.game.bean.Game;
import org.game.bean.GameTypeExample;
import org.game.dao.GameMapper;
import org.game.dao.GameTypeMapper;
import org.game.dao.TopicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-05 15:18
 * @description: NO description
 **/
@Service
public class GameService {
    @Autowired
    GameMapper gameMapper;
    @Autowired
    GameTypeMapper gameTypeMapper;
    @Autowired
    TopicMapper topicMapper;

    public List<Game> selectGameByRank(String rankName, Integer num){
        List<Game>  games = gameMapper.selectGameByRankName(rankName,num);
        System.out.println(rankName+","+num+","+games.size());
        return games;
    }

    /**
     * 需要查是在首页的所有类型名字，名字放arraylist
     * 循环去数据库查改类型的数据列表
     * @return
     */
    public Map<String,Object> selectHomeGameLists(){
        Map<String,Object> HomeGames=new HashMap<>();
        ArrayList<String> typeNames=gameTypeMapper.getTypeNames();
        List<Game> gameList = new ArrayList<>();
        for (String typeName : typeNames) {
            //循环去数据库查改类型的数据列表
            List<Game> games = gameMapper.selectGameByRankName(typeName, 0);
            for (Game game : games) {
                // 根据游戏查评论数
                int i = topicMapper.topicCountByGameId(game.getId());
                game.setId(i);
                gameList.add(game);
            }
            HomeGames.put(typeName, gameList);
        }
        return HomeGames;
    }
}

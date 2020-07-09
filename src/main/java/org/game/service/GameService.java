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

    /**
     * 根据类型名字，和排行数查询
     * @param rankName  类型名字
     * @param num   指定查几个，0为查所有
     * @return 游戏集合
     */
    public List<Game> selectGameByRank(String rankName, Integer num){
        List<Game>  games = gameMapper.selectGameByRankName(rankName,num);
        return games;
    }

    /**
     * 需要查是在首页的所有类型名字，名字放arraylist
     * 循环去数据库查改类型的数据列表
     * @return Map<游戏类型名,游戏集合>
     */
    public Map<String,Object> selectHomeGameLists(){
        Map<String,Object> HomeGames=new HashMap<>();
        ArrayList<String> typeNames=gameTypeMapper.getTypeNames();
        List<Game> gameList = null ;
        for (String typeName : typeNames) {
            gameList=new ArrayList<>();
            //循环去数据库查改类型的数据列表
            List<Game> games = gameMapper.selectGameByRankName(typeName, 3);
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

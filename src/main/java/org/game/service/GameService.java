package org.game.service;

import org.game.bean.Game;
import org.game.bean.Topic;
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
            HomeGames.put(typeName, games);
        }
        return HomeGames;
    }


    public boolean insertContent(String content) {
        Topic topic = new Topic();
        topic.setContent(content);
        topic.setParentId(1);
        topic.setGameId(0);
        topic.setFromUid(1);
        int insert = topicMapper.insertSelective(topic);
        if (insert != 1) {
            return false;
        }
        return true;
    }

    public List<Game> selectChargeGames() {
        return gameMapper.selectPriceGames();
    }

    public List<Game> selectChargeGames(Integer num) {
        return gameMapper.selectPriceGamesByNum(num);
    }

    public List<String> getGameTypes() {
        return gameTypeMapper.getTypeNames();
    }

    public Game selectSingle(Integer gameId) {
        Game game = gameMapper.selectGameById(gameId);
        return game;
    }
    public boolean saveTopic(Integer integer,Integer userId, Integer gameId,String msg) {
        Topic topic = new Topic();
        topic.setParentId(integer);
        topic.setFromUid(userId);
        topic.setGameId(gameId);
        topic.setContent(msg);
        int insert = topicMapper.insertSelective(topic);
        if (insert != 1) {
            return false;
        }else{
            return true;
        }

    }
}

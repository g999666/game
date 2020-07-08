package org.game.service;

import org.game.bean.Game;
import org.game.dao.GameMapper;
import org.game.dao.TopicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-08 19:28
 * @description: NO description
 **/
@Service
public class BlogService {
    @Autowired
    GameMapper gameMapper;
    @Autowired
    TopicMapper topicMapper;


    public List<Game> getAllBlog() {
        ArrayList<Game> games1 = gameMapper.selectGameByTime();
        List<Game> gameList = new ArrayList<>();
        for (Game game : games1) {
            int i = topicMapper.topicCountByGameId(game.getId());
            game.setId(i);
            gameList.add(game);
        }
        return gameList;
    }
}

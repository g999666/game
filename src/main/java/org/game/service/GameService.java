package org.game.service;

import org.game.bean.Game;
import org.game.dao.GameMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public List<Game> selectGameByRank(String rankName, Integer num){
        List<Game>  games = gameMapper.selectGameByRankName(rankName,num);
        return games;
    }
}

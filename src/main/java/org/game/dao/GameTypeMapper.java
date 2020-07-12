package org.game.dao;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.game.bean.GameType;
import org.game.bean.GameTypeExample;

public interface GameTypeMapper {
    ArrayList<String> getTypeNames();
    long countByExample(GameTypeExample example);

    int deleteByExample(GameTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(GameType record);

    int insertSelective(GameType record);

    List<GameType> selectByExample(GameTypeExample example);

    GameType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") GameType record, @Param("example") GameTypeExample example);

    int updateByExample(@Param("record") GameType record, @Param("example") GameTypeExample example);

    int updateByPrimaryKeySelective(GameType record);

    int updateByPrimaryKey(GameType record);
}
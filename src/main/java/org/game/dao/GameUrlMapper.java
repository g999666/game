package org.game.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.game.bean.GameUrl;
import org.game.bean.GameUrlExample;

public interface GameUrlMapper {
    long countByExample(GameUrlExample example);

    int deleteByExample(GameUrlExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(GameUrl record);

    int insertSelective(GameUrl record);

    List<GameUrl> selectByExample(GameUrlExample example);

    GameUrl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") GameUrl record, @Param("example") GameUrlExample example);

    int updateByExample(@Param("record") GameUrl record, @Param("example") GameUrlExample example);

    int updateByPrimaryKeySelective(GameUrl record);

    int updateByPrimaryKey(GameUrl record);
}
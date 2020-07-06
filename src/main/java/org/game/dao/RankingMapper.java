package org.game.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.game.bean.Ranking;
import org.game.bean.RankingExample;

public interface RankingMapper {
    long countByExample(RankingExample example);

    int deleteByExample(RankingExample example);

    int insert(Ranking record);

    int insertSelective(Ranking record);

    List<Ranking> selectByExample(RankingExample example);

    int updateByExampleSelective(@Param("record") Ranking record, @Param("example") RankingExample example);

    int updateByExample(@Param("record") Ranking record, @Param("example") RankingExample example);
}
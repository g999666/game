package org.game.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.game.bean.Topic;
import org.game.bean.TopicExample;
import org.game.bean.TopicKey;

public interface TopicMapper {
    long countByExample(TopicExample example);

    int deleteByExample(TopicExample example);

    int deleteByPrimaryKey(TopicKey key);

    int insert(Topic record);

    int insertSelective(Topic record);

    List<Topic> selectByExample(TopicExample example);

    Topic selectByPrimaryKey(TopicKey key);

    int updateByExampleSelective(@Param("record") Topic record, @Param("example") TopicExample example);

    int updateByExample(@Param("record") Topic record, @Param("example") TopicExample example);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKey(Topic record);

    int topicCountByGameId(int id);


}
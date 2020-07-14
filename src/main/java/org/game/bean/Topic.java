package org.game.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Topic extends TopicKey {
    public String getParentTopicName() {
        return parentTopicName;
    }

    public void setParentTopicName(String parentTopicName) {
        this.parentTopicName = parentTopicName;
    }

    private String parentTopicName;
    private Integer gameId;

    private String content;

    private Integer parentId;

    private Integer good;

    private Integer low;

    @Override
    public String toString() {
        return "Topic{" +
                "gameId=" + gameId +
                ", content='" + content + '\'' +
                ", parentId=" + parentId +
                ", good=" + good +
                ", low=" + low +
                ", createTime=" + createTime +
                ", user=" + user +
                ", topicNum=" + topicNum +
                ", modifyTime=" + modifyTime +
                '}';
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date createTime;
    private User user;
    private Integer topicNum;

    public Integer getTopicNum() {
        return topicNum;
    }

    public void setTopicNum(Integer topicNum) {
        this.topicNum = topicNum;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private Date modifyTime;

    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getGood() {
        return good;
    }

    public void setGood(Integer good) {
        this.good = good;
    }

    public Integer getLow() {
        return low;
    }

    public void setLow(Integer low) {
        this.low = low;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
}
package org.game.bean;

import java.util.Date;

public class Game {
    private Integer id;

    private String gameName;

    private String gameDesc;

    private Integer gameUrl;

    private Date lastTopic;

    private Date lastPostedtopic;
    private Ranking ranking;
    private GameType gameType;
    private GameUrl gameU;

    public GameUrl getGameU() {
        return gameU;
    }

    public void setGameU(GameUrl gameU) {
        this.gameU = gameU;
    }

    public GameType getGameType() {
        return gameType;
    }

    public void setGameType(GameType gameType) {
        this.gameType = gameType;
    }

    public Ranking getRanking() {
        return ranking;
    }

    public void setRanking(Ranking ranking) {
        this.ranking = ranking;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName == null ? null : gameName.trim();
    }

    public String getGameDesc() {
        return gameDesc;
    }

    public void setGameDesc(String gameDesc) {
        this.gameDesc = gameDesc == null ? null : gameDesc.trim();
    }

    public Integer getGameUrl() {
        return gameUrl;
    }

    public void setGameUrl(Integer gameUrl) {
        this.gameUrl = gameUrl;
    }

    public Date getLastTopic() {
        return lastTopic;
    }

    public void setLastTopic(Date lastTopic) {
        this.lastTopic = lastTopic;
    }

    public Date getLastPostedtopic() {
        return lastPostedtopic;
    }

    public void setLastPostedtopic(Date lastPostedtopic) {
        this.lastPostedtopic = lastPostedtopic;
    }
}
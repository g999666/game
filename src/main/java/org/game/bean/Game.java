package org.game.bean;

public class Game {
    private Integer id;

    private String gameName;

    private String gameDesc;

    private Integer gameUrl;

    private Integer lastTopic;
    private GameType gameType;
    private GameUrl gameU;
    private Topic topic;
    private User user;
    private Ranking ranking;

    public GameType getGameType() {
        return gameType;
    }

    public void setGameType(GameType gameType) {
        this.gameType = gameType;
    }

    public GameUrl getGameU() {
        return gameU;
    }

    public void setGameU(GameUrl gameU) {
        this.gameU = gameU;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public Integer getLastTopic() {
        return lastTopic;
    }

    public void setLastTopic(Integer lastTopic) {
        this.lastTopic = lastTopic;
    }
}
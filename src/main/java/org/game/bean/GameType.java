package org.game.bean;

public class GameType {
    private Integer id;

    private String typeName;

    private Integer topflag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public Integer getTopflag() {
        return topflag;
    }

    public void setTopflag(Integer topflag) {
        this.topflag = topflag;
    }
}
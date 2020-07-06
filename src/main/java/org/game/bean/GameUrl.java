package org.game.bean;

public class GameUrl {
    private Integer id;

    private String downloadUrl;

    private String officialUrl;

    private String littlePic;

    private String bigPic;

    private String newLittlePic;

    private String newBigPic;

    private String poster;

    private String lowPic;

    private String blogPic;

    private String commonPic;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl == null ? null : downloadUrl.trim();
    }

    public String getOfficialUrl() {
        return officialUrl;
    }

    public void setOfficialUrl(String officialUrl) {
        this.officialUrl = officialUrl == null ? null : officialUrl.trim();
    }

    public String getLittlePic() {
        return littlePic;
    }

    public void setLittlePic(String littlePic) {
        this.littlePic = littlePic == null ? null : littlePic.trim();
    }

    public String getBigPic() {
        return bigPic;
    }

    public void setBigPic(String bigPic) {
        this.bigPic = bigPic == null ? null : bigPic.trim();
    }

    public String getNewLittlePic() {
        return newLittlePic;
    }

    public void setNewLittlePic(String newLittlePic) {
        this.newLittlePic = newLittlePic == null ? null : newLittlePic.trim();
    }

    public String getNewBigPic() {
        return newBigPic;
    }

    public void setNewBigPic(String newBigPic) {
        this.newBigPic = newBigPic == null ? null : newBigPic.trim();
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster == null ? null : poster.trim();
    }

    public String getLowPic() {
        return lowPic;
    }

    public void setLowPic(String lowPic) {
        this.lowPic = lowPic == null ? null : lowPic.trim();
    }

    public String getBlogPic() {
        return blogPic;
    }

    public void setBlogPic(String blogPic) {
        this.blogPic = blogPic == null ? null : blogPic.trim();
    }

    public String getCommonPic() {
        return commonPic;
    }

    public void setCommonPic(String commonPic) {
        this.commonPic = commonPic == null ? null : commonPic.trim();
    }
}
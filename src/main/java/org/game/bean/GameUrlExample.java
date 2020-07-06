package org.game.bean;

import java.util.ArrayList;
import java.util.List;

public class GameUrlExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GameUrlExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlIsNull() {
            addCriterion("downLoad_url is null");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlIsNotNull() {
            addCriterion("downLoad_url is not null");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlEqualTo(String value) {
            addCriterion("downLoad_url =", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlNotEqualTo(String value) {
            addCriterion("downLoad_url <>", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlGreaterThan(String value) {
            addCriterion("downLoad_url >", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlGreaterThanOrEqualTo(String value) {
            addCriterion("downLoad_url >=", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlLessThan(String value) {
            addCriterion("downLoad_url <", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlLessThanOrEqualTo(String value) {
            addCriterion("downLoad_url <=", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlLike(String value) {
            addCriterion("downLoad_url like", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlNotLike(String value) {
            addCriterion("downLoad_url not like", value, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlIn(List<String> values) {
            addCriterion("downLoad_url in", values, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlNotIn(List<String> values) {
            addCriterion("downLoad_url not in", values, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlBetween(String value1, String value2) {
            addCriterion("downLoad_url between", value1, value2, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andDownloadUrlNotBetween(String value1, String value2) {
            addCriterion("downLoad_url not between", value1, value2, "downloadUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlIsNull() {
            addCriterion("official_url is null");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlIsNotNull() {
            addCriterion("official_url is not null");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlEqualTo(String value) {
            addCriterion("official_url =", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlNotEqualTo(String value) {
            addCriterion("official_url <>", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlGreaterThan(String value) {
            addCriterion("official_url >", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlGreaterThanOrEqualTo(String value) {
            addCriterion("official_url >=", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlLessThan(String value) {
            addCriterion("official_url <", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlLessThanOrEqualTo(String value) {
            addCriterion("official_url <=", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlLike(String value) {
            addCriterion("official_url like", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlNotLike(String value) {
            addCriterion("official_url not like", value, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlIn(List<String> values) {
            addCriterion("official_url in", values, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlNotIn(List<String> values) {
            addCriterion("official_url not in", values, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlBetween(String value1, String value2) {
            addCriterion("official_url between", value1, value2, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andOfficialUrlNotBetween(String value1, String value2) {
            addCriterion("official_url not between", value1, value2, "officialUrl");
            return (Criteria) this;
        }

        public Criteria andLittlePicIsNull() {
            addCriterion("little_pic is null");
            return (Criteria) this;
        }

        public Criteria andLittlePicIsNotNull() {
            addCriterion("little_pic is not null");
            return (Criteria) this;
        }

        public Criteria andLittlePicEqualTo(String value) {
            addCriterion("little_pic =", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicNotEqualTo(String value) {
            addCriterion("little_pic <>", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicGreaterThan(String value) {
            addCriterion("little_pic >", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicGreaterThanOrEqualTo(String value) {
            addCriterion("little_pic >=", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicLessThan(String value) {
            addCriterion("little_pic <", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicLessThanOrEqualTo(String value) {
            addCriterion("little_pic <=", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicLike(String value) {
            addCriterion("little_pic like", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicNotLike(String value) {
            addCriterion("little_pic not like", value, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicIn(List<String> values) {
            addCriterion("little_pic in", values, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicNotIn(List<String> values) {
            addCriterion("little_pic not in", values, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicBetween(String value1, String value2) {
            addCriterion("little_pic between", value1, value2, "littlePic");
            return (Criteria) this;
        }

        public Criteria andLittlePicNotBetween(String value1, String value2) {
            addCriterion("little_pic not between", value1, value2, "littlePic");
            return (Criteria) this;
        }

        public Criteria andBigPicIsNull() {
            addCriterion("big_pic is null");
            return (Criteria) this;
        }

        public Criteria andBigPicIsNotNull() {
            addCriterion("big_pic is not null");
            return (Criteria) this;
        }

        public Criteria andBigPicEqualTo(String value) {
            addCriterion("big_pic =", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicNotEqualTo(String value) {
            addCriterion("big_pic <>", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicGreaterThan(String value) {
            addCriterion("big_pic >", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicGreaterThanOrEqualTo(String value) {
            addCriterion("big_pic >=", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicLessThan(String value) {
            addCriterion("big_pic <", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicLessThanOrEqualTo(String value) {
            addCriterion("big_pic <=", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicLike(String value) {
            addCriterion("big_pic like", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicNotLike(String value) {
            addCriterion("big_pic not like", value, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicIn(List<String> values) {
            addCriterion("big_pic in", values, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicNotIn(List<String> values) {
            addCriterion("big_pic not in", values, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicBetween(String value1, String value2) {
            addCriterion("big_pic between", value1, value2, "bigPic");
            return (Criteria) this;
        }

        public Criteria andBigPicNotBetween(String value1, String value2) {
            addCriterion("big_pic not between", value1, value2, "bigPic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicIsNull() {
            addCriterion("new_little_pic is null");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicIsNotNull() {
            addCriterion("new_little_pic is not null");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicEqualTo(String value) {
            addCriterion("new_little_pic =", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicNotEqualTo(String value) {
            addCriterion("new_little_pic <>", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicGreaterThan(String value) {
            addCriterion("new_little_pic >", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicGreaterThanOrEqualTo(String value) {
            addCriterion("new_little_pic >=", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicLessThan(String value) {
            addCriterion("new_little_pic <", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicLessThanOrEqualTo(String value) {
            addCriterion("new_little_pic <=", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicLike(String value) {
            addCriterion("new_little_pic like", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicNotLike(String value) {
            addCriterion("new_little_pic not like", value, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicIn(List<String> values) {
            addCriterion("new_little_pic in", values, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicNotIn(List<String> values) {
            addCriterion("new_little_pic not in", values, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicBetween(String value1, String value2) {
            addCriterion("new_little_pic between", value1, value2, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewLittlePicNotBetween(String value1, String value2) {
            addCriterion("new_little_pic not between", value1, value2, "newLittlePic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicIsNull() {
            addCriterion("new_big_pic is null");
            return (Criteria) this;
        }

        public Criteria andNewBigPicIsNotNull() {
            addCriterion("new_big_pic is not null");
            return (Criteria) this;
        }

        public Criteria andNewBigPicEqualTo(String value) {
            addCriterion("new_big_pic =", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicNotEqualTo(String value) {
            addCriterion("new_big_pic <>", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicGreaterThan(String value) {
            addCriterion("new_big_pic >", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicGreaterThanOrEqualTo(String value) {
            addCriterion("new_big_pic >=", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicLessThan(String value) {
            addCriterion("new_big_pic <", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicLessThanOrEqualTo(String value) {
            addCriterion("new_big_pic <=", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicLike(String value) {
            addCriterion("new_big_pic like", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicNotLike(String value) {
            addCriterion("new_big_pic not like", value, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicIn(List<String> values) {
            addCriterion("new_big_pic in", values, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicNotIn(List<String> values) {
            addCriterion("new_big_pic not in", values, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicBetween(String value1, String value2) {
            addCriterion("new_big_pic between", value1, value2, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andNewBigPicNotBetween(String value1, String value2) {
            addCriterion("new_big_pic not between", value1, value2, "newBigPic");
            return (Criteria) this;
        }

        public Criteria andPosterIsNull() {
            addCriterion("poster is null");
            return (Criteria) this;
        }

        public Criteria andPosterIsNotNull() {
            addCriterion("poster is not null");
            return (Criteria) this;
        }

        public Criteria andPosterEqualTo(String value) {
            addCriterion("poster =", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterNotEqualTo(String value) {
            addCriterion("poster <>", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterGreaterThan(String value) {
            addCriterion("poster >", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterGreaterThanOrEqualTo(String value) {
            addCriterion("poster >=", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterLessThan(String value) {
            addCriterion("poster <", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterLessThanOrEqualTo(String value) {
            addCriterion("poster <=", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterLike(String value) {
            addCriterion("poster like", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterNotLike(String value) {
            addCriterion("poster not like", value, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterIn(List<String> values) {
            addCriterion("poster in", values, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterNotIn(List<String> values) {
            addCriterion("poster not in", values, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterBetween(String value1, String value2) {
            addCriterion("poster between", value1, value2, "poster");
            return (Criteria) this;
        }

        public Criteria andPosterNotBetween(String value1, String value2) {
            addCriterion("poster not between", value1, value2, "poster");
            return (Criteria) this;
        }

        public Criteria andLowPicIsNull() {
            addCriterion("low_pic is null");
            return (Criteria) this;
        }

        public Criteria andLowPicIsNotNull() {
            addCriterion("low_pic is not null");
            return (Criteria) this;
        }

        public Criteria andLowPicEqualTo(String value) {
            addCriterion("low_pic =", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicNotEqualTo(String value) {
            addCriterion("low_pic <>", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicGreaterThan(String value) {
            addCriterion("low_pic >", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicGreaterThanOrEqualTo(String value) {
            addCriterion("low_pic >=", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicLessThan(String value) {
            addCriterion("low_pic <", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicLessThanOrEqualTo(String value) {
            addCriterion("low_pic <=", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicLike(String value) {
            addCriterion("low_pic like", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicNotLike(String value) {
            addCriterion("low_pic not like", value, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicIn(List<String> values) {
            addCriterion("low_pic in", values, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicNotIn(List<String> values) {
            addCriterion("low_pic not in", values, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicBetween(String value1, String value2) {
            addCriterion("low_pic between", value1, value2, "lowPic");
            return (Criteria) this;
        }

        public Criteria andLowPicNotBetween(String value1, String value2) {
            addCriterion("low_pic not between", value1, value2, "lowPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicIsNull() {
            addCriterion("blog_pic is null");
            return (Criteria) this;
        }

        public Criteria andBlogPicIsNotNull() {
            addCriterion("blog_pic is not null");
            return (Criteria) this;
        }

        public Criteria andBlogPicEqualTo(String value) {
            addCriterion("blog_pic =", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicNotEqualTo(String value) {
            addCriterion("blog_pic <>", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicGreaterThan(String value) {
            addCriterion("blog_pic >", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicGreaterThanOrEqualTo(String value) {
            addCriterion("blog_pic >=", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicLessThan(String value) {
            addCriterion("blog_pic <", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicLessThanOrEqualTo(String value) {
            addCriterion("blog_pic <=", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicLike(String value) {
            addCriterion("blog_pic like", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicNotLike(String value) {
            addCriterion("blog_pic not like", value, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicIn(List<String> values) {
            addCriterion("blog_pic in", values, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicNotIn(List<String> values) {
            addCriterion("blog_pic not in", values, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicBetween(String value1, String value2) {
            addCriterion("blog_pic between", value1, value2, "blogPic");
            return (Criteria) this;
        }

        public Criteria andBlogPicNotBetween(String value1, String value2) {
            addCriterion("blog_pic not between", value1, value2, "blogPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicIsNull() {
            addCriterion("common_pic is null");
            return (Criteria) this;
        }

        public Criteria andCommonPicIsNotNull() {
            addCriterion("common_pic is not null");
            return (Criteria) this;
        }

        public Criteria andCommonPicEqualTo(String value) {
            addCriterion("common_pic =", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicNotEqualTo(String value) {
            addCriterion("common_pic <>", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicGreaterThan(String value) {
            addCriterion("common_pic >", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicGreaterThanOrEqualTo(String value) {
            addCriterion("common_pic >=", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicLessThan(String value) {
            addCriterion("common_pic <", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicLessThanOrEqualTo(String value) {
            addCriterion("common_pic <=", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicLike(String value) {
            addCriterion("common_pic like", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicNotLike(String value) {
            addCriterion("common_pic not like", value, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicIn(List<String> values) {
            addCriterion("common_pic in", values, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicNotIn(List<String> values) {
            addCriterion("common_pic not in", values, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicBetween(String value1, String value2) {
            addCriterion("common_pic between", value1, value2, "commonPic");
            return (Criteria) this;
        }

        public Criteria andCommonPicNotBetween(String value1, String value2) {
            addCriterion("common_pic not between", value1, value2, "commonPic");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
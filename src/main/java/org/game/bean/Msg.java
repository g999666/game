package org.game.bean;

import java.util.HashMap;
import java.util.Map;

public class Msg {

    //100成功 200失败
    private int code;
     //信息
    private String msg;

    //返回给浏览器的数据
    private Map<String,Object> extend=new HashMap<String, Object>();


    //成功之后调用
    public static Msg suessce(){
        Msg msg=new Msg();
        msg.setCode(100);
        msg.setMsg("成功");
        return msg;
    }
    //失败后调用
    public static Msg fail(){
        Msg msg=new Msg();
        msg.setCode(200);
        msg.setMsg("失败");
        return msg;
    }

    //添加数据
    public Msg add(String key, Object value){
    this.getextend().put(key,value);
    return this;
    }


    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getextend() {
        return extend;
    }

    public void setextend(Map<String, Object> extend) {
        this.extend = extend;
    }
}

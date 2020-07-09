package org.game.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-07 15:15
 * @description: NO description
 **/
public class StringToDateConverter implements Converter<String, Date> {
    private String datePattern;  //yyyy-MM-dd

    public StringToDateConverter(String datePattern){
        System.out.println("StringToDateConverter converte：" + datePattern);
        this.datePattern = datePattern;
    }
    @Override
    public Date convert(String s) {   // s: 是从前台接收的日期类型的字符串
        Date date = null;
        try {
            date = new SimpleDateFormat(datePattern).parse(s);
            System.out.println("StringToDateConverter converte date：" + date);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return date;
    }
}


package com.qanyn.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Translator {

    public static String changeTitleToId (String title) {
        for(int i = 0; i < title.length(); i++) {
            if(title.charAt(i) == 32) {
                title = changeCharInPosition(i, '_', title);
            }
        }
        return title;
    }

    public static String changeCharInPosition(int position, char ch, String str){
        char[] charArray = str.toCharArray();
        charArray[position] = ch;
        return new String(charArray);
    }

    public static Date getOnlyDate(Date date) throws ParseException {
        DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        Date dateNew = formatter.parse(formatter.format(date));
        return dateNew;
    }
}

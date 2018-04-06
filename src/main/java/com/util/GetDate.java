package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetDate {

	public static String getTime() {
		Date date =new Date(System.currentTimeMillis());
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowDate =sdf.format(date);
		System.out.println(nowDate);
		return nowDate;
	}
	
	/* 
     * 将时间戳转换为时间
     */
    public static String stampToDate(String s){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long lt = new Long(s);
        Date date = new Date(lt);
        res = simpleDateFormat.format(date);
        return res;
    }
    /* 
     * 将时间转换为时间戳
     */    
    public static String dateToStamp(String s) throws Exception{
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = simpleDateFormat.parse(s);
        long ts = date.getTime();
        res = String.valueOf(ts);
        return res;
    }
}

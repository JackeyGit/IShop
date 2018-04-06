package com.util;



public class SubString{
		public void subString() {
		String string ="D:.apache-tomcat-7.0.8.webapps.BYSJ.UploadFile.Pic.123.txt";
		String str="D:.apache-tomcat-7.0.8.webapps.BYSJ.";
		
	String st=string.substring(string.lastIndexOf(str));
	System.out.println(string.lastIndexOf(str));
	
		
	}
}
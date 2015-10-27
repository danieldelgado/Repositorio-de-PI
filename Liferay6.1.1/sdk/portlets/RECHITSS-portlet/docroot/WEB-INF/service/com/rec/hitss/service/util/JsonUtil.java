package com.rec.hitss.service.util;

import com.google.gson.Gson;



public class JsonUtil {

	private static final Gson JSON = new Gson();
	
	public static String getJsonObject(Object obj){
		return JSON.toJson(obj);
	}
	
}

package com.rec.hitss.service.util;

public class SeguridadUtil {

	private  static final String passPhrase = "PORTAL_HITSS";
	private  static final StringEncrypter desEncrypter = new StringEncrypter(passPhrase);

	public static String desencripta(String s) throws Exception {
		return desEncrypter.decrypt(s);
	}
	
	public static String encripta(String s) throws Exception {
		return desEncrypter.encrypt(s);
	}

}
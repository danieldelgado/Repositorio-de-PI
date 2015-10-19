package com.rec.registrarusuario.controller;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SimpleMailWithAttachment {

	/**
	 * @param args
	 */

	String 
	email = "danieldelgado20g@gmail.com", 
	password = "danieldelgado1234", 
	host = "smtp.gmail.com", 
	port = "465", 
	to = "u201317471@upc.edu.pe", 
	subject = "Testing",
	text = "Hey, this is the testing email msg.";

	public SimpleMailWithAttachment() {
		Properties props = new Properties();
		props.put("mail.smtp.user", email);
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", port);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("proxySet","true");
		props.setProperty("ProxyHost","10.172.134.97");
		props.setProperty("ProxyPort","3128");
		
		SecurityManager security = System.getSecurityManager();

		try {
			Authenticator auth = new SMTPAuthenticator();
			Session session = Session.getInstance(props, auth);
			// session.setDebug(true);

			MimeMessage msg = new MimeMessage(session);
			msg.setText(text);
			msg.setSubject(subject);
			msg.setFrom(new InternetAddress(email));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			Transport.send(msg);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	private class SMTPAuthenticator extends javax.mail.Authenticator {
		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(email, password);
		}
	}

	public static void main(String[] args) throws Exception {
		SimpleMailWithAttachment swa = new SimpleMailWithAttachment();
	}

}
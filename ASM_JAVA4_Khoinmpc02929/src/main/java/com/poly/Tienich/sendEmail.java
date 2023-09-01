package com.poly.Tienich;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;

import javax.mail.internet.MimeMessage;

import Entity.Email;

public class sendEmail {
	public static void send(Email email) throws Exception {
		Properties properties = new Properties();

		properties.setProperty("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.starttls.enable", "true");
		properties.setProperty("mail.smtp.host", "smtp.gmail.com");
		properties.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");
		properties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
		properties.setProperty("mail.smtp.port", "587");

		Session session = Session.getInstance(properties, new Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email.getFrom(), email.getPassword());

			}
		});

		MimeMessage mime = new MimeMessage(session);
		try {

			mime.setFrom(new InternetAddress(email.getFrom()));
			mime.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email.getTo()));
			mime.setSubject(email.getSubject(), "utf-8");
			mime.setContent(email.getContent(), "text/html;  charset=utf-8");

			Transport.send(mime);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}

package com.action;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.action.RegConMail;


public class RegConMail{
	private String from;
	 
	private static String email;
	  
	   private String password;
	   
	   private String subject;
	   private String body;

	@SuppressWarnings("unused")
	private Properties properties;
		public static boolean sendRegEmail(String email,String firstName) {

	   Properties properties = new Properties();
	    
	      properties.put("mail.smtp.host", "smtp.gmail.com");
	      properties.put("mail.smtp.socketFactory.port", "465");
	      properties.put("mail.smtp.socketFactory.class",
	         "javax.net.ssl.SSLSocketFactory");
	      properties.put("mail.smtp.auth", "true");
	      properties.put("mail.smtp.port", "465");
	   
	      Session session = Session.getDefaultInstance(properties,  
		            new javax.mail.Authenticator() {
		               protected PasswordAuthentication 
		               getPasswordAuthentication() {
		                  return new 
		                  PasswordAuthentication("abcjobslithan12i@gmail.com", "9833804070grs");
		               }
		            } );
		      try {
		         Message message = new MimeMessage(session);
		         message.setFrom(new InternetAddress("abcjobslithan12i@gmail.com"));
		         message.setRecipients(Message.RecipientType.TO, 
		            InternetAddress.parse(email));
		         message.setSubject("Email Confirmation");
		         message.setText("Dear"+" "+firstName+ "\n\n Your Registration has been confirmed.");
		         
		         Transport.send(message);
		         System.out.println("done");
		      } catch(Exception e) {
		         e.printStackTrace(); }
			return false;
	}

	 public String getFrom() {
			return from;
		}

		   public void setFrom(String from) {
		      this.from = from;
		   }

		   public String getPassword() {
		      return password;
		   }

		   public void setPassword(String password) {
		      this.password = password;
		   }
	

		   public String getEmail() {
		      return email;
		   }

		   public void setEmail(String email) {
		      RegConMail.email = email;
		   }

		   public String getSubject() {
		      return subject;
		   }

		   public void setSubject(String subject) {
		      this.subject = subject;
		   }

		   public String getBody() {
		      return body;
		   }

		   public void setBody(String body) {
		      this.body = body;
		   }

		   public static Properties getProperties() {
		      return getProperties();
		   }

		   public  void setProperties(Properties properties) {
			   this.properties=properties;
		   }
		}
	



package com.ben.model;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public class User {
	
	
	private String emailAddress,to,subject,text;

	public String getEmailAddress() {
		return emailAddress;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		
		this.text = text;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

}

package com.ben.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.ben.model.User;

@Service
public class MailService {
	
	private JavaMailSender javaMailSender;

	@Autowired
	public MailService(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

	public void sendEmail(User user) throws MailException {
		/*
		 * String k=i+"-"+j; String sp[]=k.split("-"); String ii=sp[0]; String jj=sp[1];
		 * System.out.println(ii+"+"+jj);
		 */
		
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(user.getTo());
		mail.setSubject("Kathore Foundation -"+user.getText()+" is Your Verification Code For Secure Access");
		mail.setText("Your OTP - "+user.getText()+"                             Expire in : 1 minuts.");

		javaMailSender.send(mail);
	}

	public void sendEmailWithAttachment(User user) throws MailException, MessagingException {

		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

		helper.setTo(user.getEmailAddress());
		helper.setSubject("Testing Mail API with Attachment");
		helper.setText("Please find the attached document below.");

		ClassPathResource classPathResource = new ClassPathResource("Attachment.pdf");
		helper.addAttachment(classPathResource.getFilename(), classPathResource);

		javaMailSender.send(mimeMessage);
	}

}

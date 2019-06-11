package com.ben.controller;

import java.util.Random;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ben.model.User;
import com.ben.service.MailService;

@Controller
public class MailController {
	Random rd=new Random();
	
	ModelAndView mv=new ModelAndView();
	@RequestMapping("/")
	public String Index() {
		return "index.jsp";
	}
	@Autowired
	private MailService ms;
	private User user;

	@RequestMapping("send")
	public ModelAndView send(User user ,HttpServletRequest request) {
		
		int i= rd.nextInt(900) + 100;
		int j=rd.nextInt(900) + 100;
		user.setText(i+"-"+j);
		
		
		try {
			ms.sendEmail(user);
			
		} catch (MailException mailException) {
			System.out.println(mailException);
		}
		request.getSession().setAttribute("otp", i+"-"+j);
		
		mv.setViewName("otp.jsp");
		return mv;
	}

	@RequestMapping("send-mail-attachment")
	@ResponseBody
	public String sendWithAttachment() throws MessagingException {

		user.setEmailAddress("kathorefoundation@gmail.com");
		try {
			ms.sendEmailWithAttachment(user);
		} catch (MailException mailException) {
			System.out.println(mailException);
		}
		return "Congratulations! Your mail has been send to the user.";
	}

}

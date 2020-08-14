package com.tanmay.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tanmay.spring.model.Login;
import com.tanmay.spring.model.Register;
import com.tanmay.spring.service.LoginService;

@Controller
//@SessionAttributes("users")
public class LoginController {
	
	@Autowired
	LoginService service;
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		return "welcome";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value="/inboard",method = RequestMethod.GET)
	public String showInBoardPage(ModelMap model) {
		return "inboard";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model,@ModelAttribute Login login) {
		
//		Register register = (Register) model.getAttribute("users");
//		System.out.println(register.getEmail());
		boolean isValidateUser = service.validateUser(login.getEmail(), login.getPassword());
		if(!isValidateUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "login";	
		}
		model.put("email", login.getEmail());
		return "inboard";
	}
}

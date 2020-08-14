package com.tanmay.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tanmay.spring.dao.RegisterRepository;
import com.tanmay.spring.model.Register;
import com.tanmay.spring.service.RegisterService;


@Controller
//@SessionAttributes("users")
public class RegistrationController {
	
	@Autowired 
	RegisterService registerService;

	@Autowired
	RegisterRepository registerRepository;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegistration(Model map) {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String RegistrationDetails(@ModelAttribute("register") Register register ,ModelMap model) {
		
		if(!registerService.checkPassword(register.getPassword(), register.getConfirmpassword())) {
		
			model.put("error","Please check Password");

			return "register";
		}
		
		
//		Register findByEmail = registerRepository.findByEmail("asds@gmail.com");
//		System.out.println(findByEmail.getFirstname());
//		List<Register> findAll = registerRepository.findAll();
//		model.put("users", findAll);

		
		registerRepository.save(register);
		
		model.put("success","Registered Successfully");
		return "register";
	}
}

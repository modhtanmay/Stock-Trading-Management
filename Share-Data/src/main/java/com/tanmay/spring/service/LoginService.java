package com.tanmay.spring.service;

import org.springframework.stereotype.Service;

import com.tanmay.spring.model.Register;

@Service
public class LoginService {
	
	public boolean validateUser(String email,String password)  {
		boolean valid = false;
		
		// Currently login is hard-coded later on spring security will be added.
		if(email.equalsIgnoreCase("modh@gmail.com") && password.equalsIgnoreCase("modh"))
			valid = true;
		if(email.equalsIgnoreCase("dipak@gmail.com") && password.equalsIgnoreCase("dipak"))
			valid = true;
		if(email.equalsIgnoreCase("yamnat@gmail.com") && password.equalsIgnoreCase("yamnat"))
			valid = true;
		if(email.equalsIgnoreCase("share@gmail.com") && password.equalsIgnoreCase("share"))
			valid = true;
		
		return valid;
	}
}

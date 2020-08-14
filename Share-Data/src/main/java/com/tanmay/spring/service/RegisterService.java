package com.tanmay.spring.service;

import org.springframework.stereotype.Service;

@Service
public class RegisterService {
	public boolean checkPassword(String pass,String confpass) {
		if(pass.equals(confpass))
			return true;
		else
			return false;
	}
}

package com.tanmay.spring.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tanmay.spring.model.Register;

public interface RegisterRepository extends JpaRepository<Register, Integer>{

	Register findByEmail(String email); 
	
}

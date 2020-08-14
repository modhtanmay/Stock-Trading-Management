package com.tanmay.spring.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.tanmay.spring.model.Share;

@Service
public interface ShareService {
	
	public Iterable<Share> findAll();
	
	Optional<Share> findById(int id);
}

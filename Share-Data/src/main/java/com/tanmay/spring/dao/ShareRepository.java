package com.tanmay.spring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tanmay.spring.model.Share;

@Repository("shareRepository")
public interface ShareRepository extends JpaRepository<Share, Integer> {

}

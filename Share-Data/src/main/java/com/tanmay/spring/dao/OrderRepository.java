package com.tanmay.spring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tanmay.spring.model.Order;

@Repository("orderRepository")
public interface OrderRepository extends JpaRepository<Order, Integer> {

}

package com.tanmay.spring.service;

import org.springframework.stereotype.Service;

import com.tanmay.spring.model.Order;
import com.tanmay.spring.model.Share;

@Service
public class OrderService {

	
	public double calculateCost(Share share,Order order,String category) {
		double amt = 0.0;
		if(category.equalsIgnoreCase("Buy")) {
			amt = order.getQuantity()*share.getPrice();
		}
		else {
			amt = order.getQuantity()*share.getPrice();
		}
		
		return amt;
	}
}

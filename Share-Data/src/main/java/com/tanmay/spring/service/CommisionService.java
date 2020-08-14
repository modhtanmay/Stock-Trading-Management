package com.tanmay.spring.service;

import org.springframework.stereotype.Service;

@Service
public class CommisionService {

	public double calculateCommision(double price) {
		// commision 3% if price 100 to 500
		double commision = 0.0;
		if (price > 100 && price < 500)
			commision = price * (3.0 / 100);

		// commision 6% if price 500 to 1500
		if (price > 500 && price < 1500)
			commision = price * (6.0 / 100);

		// commision 12% if price 1500 to 3000
		if (price > 1500 && price < 3000)
			commision = price * (12.0 / 100);

		// commision 24% if price 3000 to 10000
		if (price > 3000 && price < 10000)
			commision = price * (24.0 / 100);
		
		// commision 20% above 10000
		else
			commision = price * (30.0 / 100);

		return commision;
	}
}

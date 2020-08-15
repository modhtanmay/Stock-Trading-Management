package com.tanmay.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication //initializes Spring(Component Scan) and Spring Boot(Auto Configuration)
@ComponentScan("com.tanmay.spring")
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);///launches a spring boot Application
	}

}

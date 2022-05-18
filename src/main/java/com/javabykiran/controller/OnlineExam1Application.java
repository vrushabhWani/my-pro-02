package com.javabykiran.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com")
public class OnlineExam1Application {

	public static void main(String[] args) {
		SpringApplication.run(OnlineExam1Application.class, args);
		System.out.println("welcome to project");
	}

}


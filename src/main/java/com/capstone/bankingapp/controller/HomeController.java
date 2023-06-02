package com.capstone.bankingapp.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class HomeController {
	
	@RequestMapping("/")
	public String hello() {
		return "Welcome home!";
	}
	
	@RequestMapping("/hello/{name}")
	public String name(@PathVariable String name) {
		return "Hello " + name; 
	}
}

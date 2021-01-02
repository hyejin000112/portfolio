package com.zerostress.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("intro")
public class IntroController {

	@RequestMapping("/intro")
	public String intro() {
		
		return "intro/intro";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		
		return "intro/faq";
	}
	
}

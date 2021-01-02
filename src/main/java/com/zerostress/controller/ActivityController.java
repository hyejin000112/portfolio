package com.zerostress.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/activity")
public class ActivityController {

	
	@RequestMapping("/activity")
	public String board_detail() {
		return "activity/activity";
	}
	
}

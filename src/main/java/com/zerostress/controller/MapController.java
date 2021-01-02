package com.zerostress.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@RequestMapping("/map_modal")
	public String map_modal() {
		return "map/map_modal";
	}
	
	@RequestMapping("/map_detail")
	public String map() {
		return "map/map_detail";
	}
}

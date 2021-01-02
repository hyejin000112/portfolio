package com.zerostress.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/weather")
public class WeatherController {
   
   @RequestMapping("/weather")
   public String weather() {
      return "weather/weather";
   }
   @RequestMapping("/weather_detail")
   public String weather_detail() {
      return "weather/weather_detail";
   }
   
}
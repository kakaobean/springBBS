package com.ktds.chart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChartController {

	@RequestMapping(value="/chart")
	public String chartMain() {
		
		
		return "/chart/main";
	}
}

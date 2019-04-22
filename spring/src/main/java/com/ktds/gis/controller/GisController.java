package com.ktds.gis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GisController {
	
//	@RequestMapping(value="/gis")
//	public String gisTest() {
//		return "/gis/main";
//	}
	@RequestMapping(value="/gis")
	public String gisTest() {
		return "/gis/examples/bing-tiles";
	}
	@RequestMapping(value="/open")
	public String open() {
		return "/gis/index";
	}
	@RequestMapping(value="/open2")
	public String open2() {
		return "/gis/open/index.html";
	}
}

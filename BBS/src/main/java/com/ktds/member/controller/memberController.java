package com.ktds.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class memberController {
	
	@RequestMapping(value = "/member/regist")
	public String regist() {
		
		return "member/regist";
	}
	
	@RequestMapping(value = "/member/login")
	public String login() {
		
		return "member/login";
	}
	
}

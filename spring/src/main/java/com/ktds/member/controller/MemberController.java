package com.ktds.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ktds.member.service.MemberService;
import com.ktds.member.vo.MemberVO;


@Controller
public class MemberController {
	
	public static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	String locale = "BB";
	
	private MemberService memberService;
	
	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index() {
		logger.info("::::: main load!{}.", locale);
		return "member/index";
	}
	@RequestMapping(value="/member/login", method = RequestMethod.GET)
	public String login() {
		logger.info("::::: login ok!{}.", locale);
		return "member/login";
	}
	@RequestMapping(value="/loginAction", method = RequestMethod.POST)
	public String loginAction(MemberVO memberVO, Model model) {
		if(memberService.validMember(memberVO)) {
			logger.info("::::: loginAction ok!{}.", locale);
			model.addAttribute("loginValid", "true");
			return "redirect:/";
		}
		logger.info("::::: not loginAction!{}.", memberService.validMember(memberVO)); 
		System.out.println(memberVO.getId() + memberVO.getPw1() + memberVO.getName());
		model.addAttribute("loginValid", "false");
		return "member/login";
	}
	@RequestMapping(value="/member/regist", method = RequestMethod.GET)
	public String regist() {
		logger.info("::::: registPage load!{}.", locale);
		return "member/regist";
	}
	@RequestMapping(value="/registAction", method = RequestMethod.POST)
	public String registAction(MemberVO memberVO) {
		System.out.println(memberVO.getId() + memberVO.getPw1() + memberVO.getName());
		if(memberService.createMember(memberVO)) {
			logger.info("::::: registAction ok!{}.", locale);
			return "member/login";
		}
		logger.info("::::: not registAction!{}.", locale);
		return "member/regist";
	}
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String getHome() {
		logger.info("::::: home ok!{}.", locale);
		return "home";
	}
	
	@RequestMapping(value="/getdata", method = RequestMethod.GET)
	public String getData() {
		logger.info("::::: getdata ok!{}.", locale);
		return "home";
	}
	@RequestMapping(value="/board/list", method = RequestMethod.GET)
	public String board() {
		logger.info("::::: /board/list ok!{}.", locale);
		return "board/list";
	}
	@RequestMapping(value="/board/view", method = RequestMethod.GET)
	public String view() {
		logger.info("::::: board/view ok!{}.", locale);
		return "board/view";
	}
	@RequestMapping(value="/board/write", method = RequestMethod.GET)
	public String write() {
		logger.info("::::: board/write ok!{}.", locale);
		return "board/write";
	}
}

package com.ktds.member.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ktds.member.service.MemberService;
import com.ktds.member.service.MemberServiceImpl;
import com.ktds.member.vo.MemberVO;

@Controller
public class memberController {
//	
	@Resource(name = "memberService")
	
	private MemberService memberService;
//	
//
//	public void setMemberService(MemberService memberService) {
//		this.memberService = memberService;
//	}

	@RequestMapping(value = "/member/regist")
	public String regist() {
		return "member/regist";
	}
	
	@RequestMapping(value = "/member/login")
	public String login(Map<String, Object> commonMap) {
//		String testT = MemberServiceImpl.test();
//		memberService.stringData();
//		System.out.println("임플 호출"+MemberServiceImpl.test());
		System.out.println(memberService.stringData());
		return "member/login";
	}
	
//	@RequestMapping(value = "/registAction" , method = RequestMethod.GET)
//	public String viewRegistPage() {
//		return "redirect:/";
//	}
//	
	@RequestMapping(value = "/registAction" , method = RequestMethod.POST)
	public String registAction(MemberVO memberVO) {
		
//		memberService.createMember(memberVO);
//		String testT = MemberServiceImpl.test();
//		
//		System.out.println("임플 호출"+MemberServiceImpl.test());
//		System.out.println(testT);
		return "redirect:/";
	}
	
}

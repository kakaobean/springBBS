package com.ktds.member.service;

import com.ktds.member.vo.MemberVO;

public interface MemberService {

	String getData();

	boolean createMember(MemberVO memberVO);

	boolean validMember(MemberVO memberVO);

}

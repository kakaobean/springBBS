package com.ktds.member.dao;

import com.ktds.member.vo.MemberVO;

public interface MemberDao {

	String data();

	int createMember(MemberVO memberVO);

	int validMember(MemberVO memberVO);

}

package com.ktds.member.service;

import com.ktds.member.dao.MemberDao;
import com.ktds.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService{

	private MemberDao memberDao;
	
	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public String getData() {
		System.out.println("서비스 왔어");
		return memberDao.data();
	}

	@Override
	public boolean createMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		return memberDao.createMember(memberVO) > 0;
	}

	@Override
	public boolean validMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		System.out.println("memberDao.validMember(memberVO)"+memberDao.validMember(memberVO)+"  ");
		return memberDao.validMember(memberVO) > 0;
	}

}

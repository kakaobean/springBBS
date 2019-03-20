package com.ktds.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao {

	
	@Override
	public String data() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("sample.selectBoardList");
	}


	@Override
	public int createMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		System.out.println("insert 확인");
		return getSqlSession().insert("sample.insertMember", memberVO);
	}


	@Override
	public int validMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
//		System.out.println("---------------"+ getSqlSession().selectOne("sample.validMember", memberVO));
		return getSqlSession().selectOne("sample.validMember", memberVO);
//		return 1;
	}

}

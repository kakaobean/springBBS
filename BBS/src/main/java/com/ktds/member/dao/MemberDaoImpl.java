package com.ktds.member.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.ktds.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao {

	@Override
	public int makeMember(MemberVO memberVO) {
		System.out.println("다오 임플까지");
		return getSqlSession().insert("sample.insertMember", memberVO);
	}

	@Override
	public List<Map<String, Object>> getData(Map<String, Object> commonMap) {
		
		return null;
	}

			
//
//	@Override
//	public List<Map<String, Object>> getData(Map<String, Object> commonMap) {
//		return null;
//	}
//
//	@Override
//	public int insertMember(MemberVO memberVO) {
//		System.out.println("다오 임플까지");
//		return getSqlSession().insert("sample.selectBoardList", memberVO);
//	}

	
}

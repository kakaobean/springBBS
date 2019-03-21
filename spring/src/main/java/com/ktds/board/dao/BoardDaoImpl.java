package com.ktds.board.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDao{

	@Override
	public void insertBoard() {
		System.out.println("다오연결");
//		getSqlSession().insert("sample.insertBoard");
	}
}

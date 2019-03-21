package com.ktds.board.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.board.vo.BoardVO;


public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDao{

	@Override
	public void insertBoard(BoardVO boardVO) {
		System.out.println("다오연결");
		getSqlSession().insert("sample.insertBoard", boardVO);
	}
}

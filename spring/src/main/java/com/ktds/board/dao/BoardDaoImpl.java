package com.ktds.board.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.board.vo.BoardVO;


public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDao{

	@Override
	public void insertBoard(BoardVO boardVO) {
		System.out.println("다오연결");
		getSqlSession().insert("sample.insertBoard", boardVO);
	}

	@Override
	public List<BoardVO> readBoardList(int id) {
		// TODO Auto-generated method stub
//		List<String> test = getSqlSession().selectList("sample.readBoardList");
//		System.out.println(test);
//		System.out.println(getSqlSession().selectList("sample.readBoardList"));
//		return getSqlSession().selectList("sample.readBoardList");
		System.out.println("==========="+getSqlSession().selectList("sample.readBoardList", id));
		return getSqlSession().selectList("sample.readBoardList", id);
	}

	@Override
	public BoardVO readViewData(int id) {
		return getSqlSession().selectOne("sample.readViewData", id);
	}

	@Override
	public int readAllCnt() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("sample.readAllCnt");
	}
}

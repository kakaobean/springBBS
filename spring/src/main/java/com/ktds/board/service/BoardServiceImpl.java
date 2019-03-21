package com.ktds.board.service;

import com.ktds.board.dao.BoardDao;

public class BoardServiceImpl implements BoardService{

	private BoardDao boardDao;
	
	
	public BoardDao getBoardDao() {
		return boardDao;
	}


	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}


	@Override
	public void insertBoard() {
		System.out.println("서비스 연결");
		boardDao.insertBoard();
	}

}

package com.ktds.board.service;

import java.util.List;

import com.ktds.board.dao.BoardDao;
import com.ktds.board.vo.BoardVO;

public class BoardServiceImpl implements BoardService{

	private BoardDao boardDao;
	
	
	public BoardDao getBoardDao() {
		return boardDao;
	}


	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}


	@Override
	public void insertBoard(BoardVO boardVO) {
		System.out.println("서비스 연결");
		boardDao.insertBoard(boardVO);
	}


	@Override
	public List<BoardVO> readBoardList(int id) {
			
		return boardDao.readBoardList(id);
	}


	@Override
	public BoardVO readViewData(int id) {
		return boardDao.readViewData(id);
	}


	@Override
	public int readAllCnt() {
		// TODO Auto-generated method stub
		return boardDao.readAllCnt();
	}


}

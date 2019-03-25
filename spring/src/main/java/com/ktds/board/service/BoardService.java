package com.ktds.board.service;

import java.util.List;

import com.ktds.board.vo.BoardVO;

public interface BoardService {

	void insertBoard(BoardVO boardVO);

	List<BoardVO> readBoardList(int id);

	BoardVO readViewData(int id);

	int readAllCnt();

}

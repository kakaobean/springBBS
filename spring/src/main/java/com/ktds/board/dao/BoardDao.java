package com.ktds.board.dao;

import java.util.List;

import com.ktds.board.vo.BoardVO;

public interface BoardDao {

	void insertBoard(BoardVO boardVO);

	List<BoardVO> readBoardList();
}

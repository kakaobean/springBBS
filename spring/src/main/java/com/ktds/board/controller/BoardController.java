package com.ktds.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ktds.board.service.BoardService;

@Controller
public class BoardController {
	
	private BoardService boardService; 
	
	public BoardService getBoardService() {
		return boardService;
	}

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}

	@RequestMapping(value = "/writeAction")
	public String writeAction() {
		System.out.println("writeAction성공");
		boardService.insertBoard();
		return "board/list";
	}
}

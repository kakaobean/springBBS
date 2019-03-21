package com.ktds.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.board.service.BoardService;
import com.ktds.board.vo.BoardVO;

@Controller
public class BoardController {
	
	private BoardService boardService; 
	
	public BoardService getBoardService() {
		return boardService;
	}

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}

	@RequestMapping(value = "/writeAction", method=RequestMethod.POST)
	public String writeAction(BoardVO boardVO) {
		
		String param = boardVO.getTitle();
		String param2 = boardVO.getBody();
//		String param = request.getParameter("title");
		System.out.println("writeAction성공"+ param + param2);
		boardService.insertBoard(boardVO);
		return "redirect:board/list";
	}
	@RequestMapping(value = "/boardList")
	public ModelAndView boardList(BoardVO boardVO) {
		ModelAndView view = new ModelAndView();
		
//		List<Board>
		
		view.setViewName("redirect:board/list");
		
		return view;
	}
}

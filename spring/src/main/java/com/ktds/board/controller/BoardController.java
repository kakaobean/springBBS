package com.ktds.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@RequestMapping(value = "/writeAction", method = RequestMethod.POST)
	@ResponseBody
	public String writeAction(BoardVO boardVO) {

		String param = boardVO.getTitle();
		String param2 = boardVO.getBody();
		System.out.println("writeAction성공" + param + param2);
		boardService.insertBoard(boardVO);
		return "redirect:board/list";
	}


@RequestMapping(value = "/ajaxSuccess/{id}", method=RequestMethod.GET)
	@ResponseBody
	public List ajaxSuccess(@PathVariable int id) {
		System.out.println("성공"+id);
		List<BoardVO> boardList = boardService.readBoardList(id);
		return boardList;
	}
	

	@RequestMapping(value = "/board/list")
	public String boardInit(Model model) {
		String readAllCnt = Integer.toString(boardService.readAllCnt());
		model.addAttribute("readAllCnt", readAllCnt);
		return "/board/list";

	}
	@RequestMapping(value = "/board/ajaxTest", method = RequestMethod.GET)
	public String ajaxTest22() {
		return "/board/ajaxTest";
	}



}

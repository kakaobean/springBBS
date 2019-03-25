package com.ktds.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping(value = "/writeAction", method=RequestMethod.POST)
	public String writeAction(BoardVO boardVO) {
		
		String param = boardVO.getTitle();
		String param2 = boardVO.getBody();
//		String param = request.getParameter("title");
		System.out.println("writeAction성공"+ param + param2);
		boardService.insertBoard(boardVO);
		return "redirect:board/list";
	}
	@RequestMapping(value = "/board/list")
		public String boardInit(Model model) {
		String readAllCnt = Integer.toString(boardService.readAllCnt());
		model.addAttribute("readAllCnt", readAllCnt);
		return "/board/list";
		
	}
	@RequestMapping(value = "/board/list/{id}")
	public ModelAndView boardList(BoardVO boardVO, @PathVariable int id) {
		ModelAndView view = new ModelAndView();
		// 페이지 번호에 맞는 게시글 10개씩 가져옴
		List<BoardVO> boardList = boardService.readBoardList(id);
		// 게시글 전체 row 수 가져오기
		int readAllCnt = boardService.readAllCnt();
		System.out.println("readAllCnt"+readAllCnt);
		System.out.println("게시글 리스트"+boardList);
		view.setViewName("board/list");
//		JSONObject jsonObject1 = new JSONObject();
//		String cellReference = "영빈"; 
//		jsonObject1.put("cell", cellReference);
		String test = "[{'name' : 'youngbin', 'age' : 14},{'name' : 'youngbin', 'age' : 14}]";
		view.addObject("boardData", boardList);
		view.addObject("readAllCnt", readAllCnt);
//		view.addObject("readAllCnt", jsonObject1);
//		System.out.println(jsonObject1);
		return view;
	}
	@RequestMapping(value = "/board/list/listView/{id}")
	public ModelAndView listView(BoardVO boardVO, @PathVariable int id) {
		ModelAndView view = new ModelAndView();
		// 03.22 09:53 start
		BoardVO viewData = boardService.readViewData(id);
		view.setViewName("board/view");
		view.addObject("viewData", viewData);
		return view;
	}
	@ResponseBody
	@RequestMapping(value = "/board/list/ajaxTest", method = RequestMethod.POST)
	public Map<String,Object> ajax(HttpServletRequest request) throws Exception {
	String firstArg = request.getParameter("test1");
	String secondArg = request.getParameter("test2");
	
	System.out.println(firstArg + " / "+ secondArg);
	Map<String,Object>  map = new HashMap<String,Object>();
	map.put("test1", firstArg);
	map.put("test2", secondArg);
	
	    return map;
	}
	@RequestMapping(value = "/board/list/ajaxTest", method = RequestMethod.GET)
	public String gssfdajkl() {
		
		return "/board/list";
	}

}

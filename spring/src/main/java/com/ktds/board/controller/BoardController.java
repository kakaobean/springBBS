package com.ktds.board.controller;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String writeAction(BoardVO boardVO) {

		String param = boardVO.getTitle();
		String param2 = boardVO.getBody();
		System.out.println("writeAction성공" + param + param2);
		boardService.insertBoard(boardVO);
		return "redirect:/board/list";
	}

	@RequestMapping(value = "/ajaxSuccess/{id}", method = RequestMethod.GET)
	@ResponseBody
	public List ajaxSuccess(@PathVariable int id) {
		System.out.println("성공" + id);
		List<BoardVO> boardList = boardService.readBoardList(id);
		return boardList;
	}

	@RequestMapping(value = "/board/list")
	public String boardInit(Model model) {
		String readAllCnt = Integer.toString(boardService.readAllCnt());
		model.addAttribute("readAllCnt", readAllCnt);
		return "/board/list";

	}
	
	@RequestMapping(value = "/board/getImage", method = RequestMethod.GET)
	public void getImage(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.setContentType("image/jpg");

		byte[] by = new byte[1024]; //한번에 읽어올 파일크기 1024 바이트
		//출력을위한 OutputStream 객체

		ServletOutputStream out = response.getOutputStream();
		
		try {
			//이미지 주소 저장
			String imagePath = "C:/file/Jellyfish.jpg";
			
			//inputStream : 파일을 1바이트씩 읽어옴
			//BufferedInputStream : inputStream객체로 버퍼객체를 생성
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(imagePath));

			//버퍼(in)에 있는 데이터를 1024바이트(by) 만큼 읽어오고 데이터가 없을경우 반복문 종료
			while(in.read(by) != -1 ) {  //  != 0 일때 무한반복
				out.write(by); //1024바이트씩 출력
			}
			in.close();
			out.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	
	@RequestMapping(value = "/board/ajaxTest", method = RequestMethod.GET)
	public String ajaxTest22(Model model) throws IOException {
		
		return "/board/ajaxTest";
	}
	@RequestMapping(value = "/board/test", method = RequestMethod.GET)
	public String ajaxTest22213(Model model) throws IOException {
		
		return "/board/test";
	}


}

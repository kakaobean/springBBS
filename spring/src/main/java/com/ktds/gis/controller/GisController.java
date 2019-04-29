package com.ktds.gis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktds.gis.service.GisService;
import com.ktds.gis.vo.GisVO;

@Controller
public class GisController {

	private GisService gisService; 
	
	public GisService getGisService() {
		return gisService;
	}
	public void setGisService(GisService gisService) {
		this.gisService = gisService;
	}
	
	@RequestMapping(value="/gis")
	public String gisTest() {
		List<GisVO> listData = gisService.getListData();
		System.out.println(gisService.getListData());
		System.out.println("===================="+ listData);
		return "/gis/main";
	}
	// 시도 가져오기
	@RequestMapping(value="/getSidoList")
	@ResponseBody
	public List<GisVO> getSidoList() {
		List<GisVO> listData = gisService.getListData();
		return listData;
	}
	// 시군구 가져오기
	@RequestMapping(value="/getSggList/{sidoCd}", method = RequestMethod.GET)
	@ResponseBody
	public List<GisVO> getSggList(@PathVariable String sidoCd) {
		System.out.println("시도코든"+sidoCd);
		List<GisVO> sggList = gisService.getSggList(sidoCd);
		
		System.out.println("::sidocd"+gisService.getSggList(sidoCd));
		return sggList;
	}
	// 읍면동 가져오기
	@RequestMapping(value="/getAdmdongList/{sggCd}", method = RequestMethod.GET)
	@ResponseBody
	public List<GisVO> getAdmdongList(@PathVariable String sggCd) {
		List<GisVO> admdongList = gisService.getAdmdongList(sggCd);
		return admdongList;
	}
	// 검색조건 param 가져오기
	@RequestMapping(value="/searchBstor", method = RequestMethod.POST)
	@ResponseBody
	public List<GisVO> paramList(GisVO gisvo) {
		List<GisVO> bstorList = gisService.getBstorList(gisvo);
		return bstorList;
	}
}

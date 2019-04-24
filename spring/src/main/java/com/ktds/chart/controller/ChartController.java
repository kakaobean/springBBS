package com.ktds.chart.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktds.chart.service.ChartService;
import com.ktds.chart.vo.ChartVO;

@Controller
public class ChartController {

	private ChartService chartService;
	
	public ChartService getChartService() {
		return chartService;
	}



	public void setChartService(ChartService chartService) {
		this.chartService = chartService;
	}



	@RequestMapping(value="/chart")
	public String chartMain() {
		
		
		return "/chart/main";
	}
	
	@RequestMapping(value="/test/{baseYm}", method = RequestMethod.GET)
	@ResponseBody
	public List chartGet(@PathVariable int baseYm) {
		
		List<ChartVO> listData = chartService.test(baseYm);
		System.out.println("호출");
		System.out.println(chartService.test(baseYm));
		System.out.println(listData);
		return listData;
	}
}

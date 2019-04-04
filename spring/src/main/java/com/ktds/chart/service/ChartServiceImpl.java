package com.ktds.chart.service;

import java.util.List;

import com.ktds.chart.dao.ChartDao;
import com.ktds.chart.vo.ChartVO;

public class ChartServiceImpl implements ChartService{
	
	private ChartDao chartDao;

	public ChartDao getChartDao() {
		return chartDao;
	}
	public void setChartDao(ChartDao chartDao) {
		this.chartDao = chartDao;
	}

	@Override
	public List<ChartVO> test() {

		return chartDao.test();
	}

}

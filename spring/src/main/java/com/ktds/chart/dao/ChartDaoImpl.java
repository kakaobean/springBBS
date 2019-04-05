package com.ktds.chart.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.chart.vo.ChartVO;

public class ChartDaoImpl extends SqlSessionDaoSupport implements ChartDao{

	@Override
	public List<ChartVO> test(int baseYm) {
		List<ChartVO> test = new ArrayList<ChartVO>();
		test.add(0, null);
		test.add(1, null);
		System.out.println(test);
//		System.out.println(getSqlSession().selectList("sampleTest.readList"));
		return getSqlSession().selectList("sampleTest.readList", baseYm);
	}

}

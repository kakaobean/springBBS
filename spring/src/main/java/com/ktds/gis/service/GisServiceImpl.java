package com.ktds.gis.service;

import java.util.List;

import com.ktds.gis.dao.GisDao;
import com.ktds.gis.vo.GisVO;

public class GisServiceImpl implements GisService {

	private GisDao gisDao;
	
	public GisDao getGisDao() {
		return gisDao;
	}
	public void setGisDao(GisDao gisDao) {
		this.gisDao = gisDao;
	}

	@Override
	public List<GisVO> getListData() {
		return gisDao.selectSido();
	}
	@Override
	public List<GisVO> getSggList(String sidoCd) {
		// TODO Auto-generated method stub
		System.out.println("gisServiceImpl"+sidoCd);
		return gisDao.selectSgg(sidoCd);
	}
	@Override
	public List<GisVO> getAdmdongList(String sggCd) {
		// TODO Auto-generated method stub
		return gisDao.selectAdmdong(sggCd);
	}
}
 
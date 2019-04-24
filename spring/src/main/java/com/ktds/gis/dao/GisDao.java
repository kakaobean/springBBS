package com.ktds.gis.dao;

import java.util.List;

import com.ktds.gis.vo.GisVO;

public interface GisDao {

	List<GisVO> selectSido();

	List<GisVO> selectSgg(String sidoCd);

	List<GisVO> selectAdmdong(String sggCd);
	
}

package com.ktds.gis.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ktds.gis.vo.GisVO;

public interface GisDao {

	List<GisVO> selectSido();

	List<GisVO> selectSgg(String sidoCd);

	List<GisVO> selectAdmdong(String sggCd);

	List<GisVO> selectBstor(GisVO gisvo);
	
}

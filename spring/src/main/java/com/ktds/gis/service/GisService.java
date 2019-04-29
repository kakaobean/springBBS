package com.ktds.gis.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ktds.gis.vo.GisVO;

public interface GisService {

	List<GisVO> getListData();

	List<GisVO> getSggList(String sidoCd);

	List<GisVO> getAdmdongList(String sggCd);

	List<GisVO> getBstorList(GisVO gisvo);

}

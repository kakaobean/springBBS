package com.ktds.gis.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.gis.vo.GisVO;

public class GisDaoImpl extends SqlSessionDaoSupport implements GisDao {

@Override
public List<GisVO> selectSido() {
		List<GisVO> test = new ArrayList<GisVO>();
//		return null;
		System.out.println(getSqlSession().selectList("gisData.selectSido"));
		return getSqlSession().selectList("gisData.selectSido");
	}

@Override
public List<GisVO> selectSgg(String sidoCd) {
	// TODO Auto-generated method stub
	return getSqlSession().selectList("gisData.selectSgg", sidoCd);
}

@Override
public List<GisVO> selectAdmdong(String sggCd) {
	System.out.println("파람텟"+getSqlSession().selectList("gisData.selectAdmdong", sggCd));
	return getSqlSession().selectList("gisData.selectAdmdong", sggCd);
}

@Override
public List<GisVO> selectBstor(GisVO gisvo) {
	return getSqlSession().selectList("gisData.selectBstor", gisvo);
}


}

package com.ktds.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ktds.community.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("sampleDao");
		return (List<Map<String, Object>>)selectList("sample.selectBoardList", map);
	}

}

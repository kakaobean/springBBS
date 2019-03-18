package com.ktds.member.dao;

import java.util.List;
import java.util.Map;

import com.ktds.member.vo.MemberVO;

public interface MemberDao {

	public int makeMember(MemberVO memberVO);

	public List<Map<String, Object>> getData(Map<String, Object> commonMap);

//	public List<Map<String, Object>> getData(Map<String, Object> commonMap);
//	return (List<Map<String, Object>>) commonMap1;

//	public int insertMember(MemberVO memberVO);

}

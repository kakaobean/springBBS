package com.ktds.member.service;

import java.util.List;
import java.util.Map;

import com.ktds.member.vo.MemberVO;

public interface MemberService {
//
//	List<Map<String, Object>> dataList();
//
//	List<Map<String, Object>> dataList(Map<String, Object> commonMap);

	public boolean createMember(MemberVO memberVO);

	public List<Map<String, Object>> dataList(Map<String, Object> commonMap);

	public String stringData();


}

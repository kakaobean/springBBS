package com.ktds.member.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ktds.member.dao.MemberDao;
import com.ktds.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

//	@Resource(name = "memberDao")
	private MemberDao memberDao;

	@Override
	public boolean createMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		System.out.println(memberDao.makeMember(memberVO)+":::");
		return memberDao.makeMember(memberVO) > 0;
	}

	@Override
	public List<Map<String, Object>> dataList(Map<String, Object> commonMap) {
		// TODO Auto-generated method stub
//		return memberDao.getData(commonMap);
		return (List<Map<String, Object>>) commonMap;
	}

	@Override
	public String stringData() {
		System.out.println("member서비스 임플");
		return "영빈";
	}

	public static String test() {
		// TODO Auto-generated method stub
		System.out.println("ddd");
		String testStr = "영빈";
		return testStr;
	}


//	@Override
//	public List<Map<String, Object>> dataList(Map<String, Object> commonMap) {
//		// TODO Auto-generated method stub
//		System.out.println(commonMap);
//		System.out.println("----");
//		System.out.println(memberDao.getData(commonMap));
//		return memberDao.getData(commonMap);
//	}
//
//	@Override
//	public List<Map<String, Object>> dataList() {
//		// TODO Auto-generated method stub
//		return null;
//	}


}
